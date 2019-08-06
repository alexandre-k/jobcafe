import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import "../ErrorMessage"
import "../Utils.js" as Utils

EnterVerificationCodeForm {

    sendCodeAgainArea.onClicked: {
        stack.pop();
    }

    verify.onClicked: {
        Utils.request('PUT', `/reminder`, {"code": verificationCode.text}, changeCurrentPassword, onError);
    }
    function changeCurrentPassword() {

        stack.push("qrc:/ui/Login/CreateNewPassword.qml");
    }

    function onError() {
        errorMessage.open();
    }

    ErrorMessage {
        id: errorMessage
        msg: "The code didn't match or may be expired. Please, retry."
    }
}
