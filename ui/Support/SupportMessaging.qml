import QtQuick 2.12
import "../Utils.js" as Utils

SupportMessagingForm {

    property int ticketId

    Component.onCompleted: {
        root.state.user.email = "john.doe@gmail.com"

        const updateMessages = (data) => {
            data.forEach((message, index) => {
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
            author: root.state.user.email,
            content: newMesssage.text,
            ticketId: ticketId,
            createdDate: Utils.formatDate(new Date())
            // attachedFile: attachedFile
        }
        console.log(newMessageWritten.author)
        messages.append(newMessageWritten)

        Utils.request('POST', '/message', newMessageWritten, showMessage);
    }

    changeTicketStatus.onClicked: {
        Utils.request('PATCH', '/ticket/' + ticketId);
    }
}
