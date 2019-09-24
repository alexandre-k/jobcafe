import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtMultimedia 5.12
import upload 1.0
import '../ErrorMessage'
import '../Utils.js' as Utils

CreateTicketForm {
    Upload {
        id: upload
        user: "john.doe@gmail.com"
        files: listModelToList(root.supportPhotos)
        url: Utils.ipAddress + "/picture"
    }

    function listModelToList(listModel) {
        var pathList = [];
        for (var i = 0 ; i < root.supportPhotos.count ; i++) {

            pathList.push(root.supportPhotos.get(i)["path"]);
        }
        return pathList
    }

    Component.onCompleted: {
        if (root.supportPhotos.count > 0) {

            upload.start();
        }

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
            errorMessage.msg = "Unable to open a ticket. Verify your Internet connection.";
            errorMessage.open();
        }

        const newTicket = {
            title: ticketTitle.text,
            owner: root.state.user.email,
            category: ticketCategory.currentText,
            content: message.text,
        }

        Utils.request('POST', '/ticket', newTicket, onSuccess, onError);
    }

    ErrorMessage { id: errorMessage }

    UploadPicture { id: uploadPicture }

    uploadPicture.onClicked: {
        if (root.supportPhotos.count >= 4) {
            errorMessage.msg = "You cannot upload more than 5 pictures at a time."
            errorMessage.open();
            return;
        }

        uploadPicture.open()
    }

    goToHomePage.onClicked: {
        stack.pop();
    }
}
