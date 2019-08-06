import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../Utils.js" as Utils

CreateNewPasswordForm {
    confirmedPassword.onEditingFinished: {
        if (confirmedPassword != password) {
            console.log("Does not match")
            // TODO ADD SOMETHING IN UI TO SHOW THAT
        }
    }

    submit.onClicked: {
        Utils.request('PUT', `/user`, {"password": password.text}, comeBackToSignIn);
    }
    function comeBackToSignIn() {
        for (i=0; i < 2; i++)
            stack.pop();
    }
}
