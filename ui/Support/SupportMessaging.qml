import QtQuick 2.12
import "../Utils.js" as Utils
import "../LoadingMessage"

SupportMessagingForm {
    LoadingMessage {
        id: loadingMessage
        msg: "Loading messages history. Please, wait..."
    }

    property int ticketId

    Component.onCompleted: {
        const updateMessages = (data) => {

            data.forEach((message, index) => {
                message.createdDate = Utils.formatDate(message.createdDate);
                messages.append(message);
            });
            loadingMessage.close();
            view.positionViewAtEnd();
        }

        Utils.request('GET', `/message?ticketId=` + ticketId, undefined, updateMessages);
        loadingMessage.open();

    }

    sendArea.onClicked: postMessage()

    changeTicketStatus.onClicked: {
        if (isOpen) {
            isOpen = false
        } else {
            isOpen = true
        }
        Utils.request('PATCH', '/ticket/' + ticketId);
    }

    function postMessage () {
        if (newMessage.text === "") {
            return;
        }

        const showMessage = (data) => {
            console.log("New message: " + data);
        }

        const newMessageWritten = {
            author: root.state.user,
            content: newMessage.text,
            ticketId: ticketId,
            createdDate: new Date()
            // attachedFile: attachedFile
        }

        Utils.request('POST', '/message', newMessageWritten, showMessage);
        newMessageWritten.createdDate = Utils.formatDate(newMessageWritten.createdDate);
        messages.append(newMessageWritten);
        newMessage.text = "";
        view.positionViewAtEnd();
    }
}
