import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../ErrorMessage'
import '../Utils.js' as Utils

CreateTicketForm {
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

        function onError(status, response) {
            errorMessage.open();
        }

        const newTicket = {
            title: ticketTitle.text,
            owner: root.state.user.email,
            category: ticketCategory.currentText,
            content: message.text,
            // attachedFile: picturePath
        }

        Utils.request('POST', '/ticket', newTicket, onSuccess, onError);
    }

    ErrorMessage { id: errorMessage; msg: "Unable to open a ticket. Verify your Internet connection."
    }

    UploadPicture { id: uploadPicture }

    uploadPicture.onClicked: uploadPicture.open()

//    uploadPictureDialog.onAccepted: {
//        picturePath = uploadPictureDialog.fileUrl;
//        Qt.quit();
//    }

    goToHomePage.onClicked: {
        stack.pop();
    }
}
