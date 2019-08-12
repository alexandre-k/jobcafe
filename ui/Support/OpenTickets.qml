import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../ErrorMessage'
import '../Utils.js' as Utils

OpenTicketsForm {
    property url picturePath: ""

    Component.onCompleted: {
        const updateTicketCategories = (data) => {
            const categories = Array.from(data).map(datum => datum.label);
            ticketCategory.model = categories;
        }

        Utils.request('GET', '/ticket-category/', undefined, updateTicketCategories);
    }

    submitTicket.onClicked: {

        function onSuccess() {
            confirmDialog.open();
        }

        function onError() {
            errorMessage.open();
        }

        const newTicket = {
            title: title.text,
            owner: root.state.user,
            category: ticketCategory.currentText,
            content: message.text,
            attachedFile: picturePath
        }

        Utils.request('POST', '/ticket', newTicket, onSuccess, onError);
    }

    ErrorMessage { id: errorMessage; msg: "Unable to open a ticket.
    }

    uploadPicture.onClicked: uploadPictureDialog.open()

    uploadPictureDialog.onAccepted: {
        picturePath = uploadPictureDialog.fileUrl;
        Qt.quit(); Verify your Internet connection." }
}
