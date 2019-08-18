import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../ErrorMessage"
import "../Utils.js" as Utils

CreateNewPasswordForm {
    property string email

    confirmedPassword.onEditingFinished: {
        if (confirmedPassword.text !== password.text) {
            errorMessage.msg = "Password do not match";
            errorMessage.open();
        }
    }

    submit.onClicked: {
        Utils.request('PUT', `/user`, {
                          "email": email,
                          "password": password.text}, onSuccess, onError);
    }
    function onSuccess() {
        // pop stack views to come back to sign in view
        for (var i=0; i < 3; i++)
            stack.pop();
    }

    function onError(status, response) {
        console.log(status, response)
        errorMessage.msg = "Unable to update your password. Verify your internet connection.";
        errorMessage.open();
    }


    ErrorMessage {
        id: errorMessage
    }
}
