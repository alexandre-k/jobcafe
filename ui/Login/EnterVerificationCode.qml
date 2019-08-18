import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import "../ErrorMessage"
import "../Utils.js" as Utils

EnterVerificationCodeForm {

    property string email;

    sendCodeAgainArea.onClicked: {
        stack.pop();
    }

    verify.onClicked: {
        console.log("USED EMAIL", email)
        Utils.request('PUT', `/reminder`, {
                          "email": email,
                          "code": verificationCode.text}
                      , changeCurrentPassword, onError);
    }
    function changeCurrentPassword() {
        stack.push("qrc:/ui/Login/CreateNewPassword.qml", {email: email});
    }

    function onError(status, response) {
        errorMessage.open();
    }

    ErrorMessage {
        id: errorMessage
        msg: "The code didn't match or may be expired. Please, retry."
    }
}
