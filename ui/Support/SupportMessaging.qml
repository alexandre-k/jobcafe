import QtQuick 2.12
import "../Utils.js" as Utils

SupportMessagingForm {

    property int ticketId

    Component.onCompleted: {

        const updateMessages = (data) => {
            data.forEach((message, index) => {
                message.createdDate = Utils.formatDate(message.createdDate);
                messages.append(message);
            });
        }

        Utils.request('GET', `/message?ticketId=` + ticketId, undefined, updateMessages);
    }

    sendArea.onClicked: {
        const showMessage = (data) => {
            console.log("New message: " + data);
        }

        const newMessageWritten = {
            author: root.state.user,
            content: newMesssage.text,
            ticketId: ticketId,
            createdDate: new Date()
            // attachedFile: attachedFile
        }

        Utils.request('POST', '/message', newMessageWritten, showMessage);
        newMessageWritten.createdDate = Utils.formatDate(newMessageWritten.createdDate);
        messages.append(newMessageWritten);
    }

    changeTicketStatus.onClicked: {
        Utils.request('PATCH', '/ticket/' + ticketId);
    }
}
