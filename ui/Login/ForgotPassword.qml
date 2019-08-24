import QtQuick 2.12
import "../Utils.js" as Utils

ForgotPasswordForm {

    sendVerificationCode.next.onClicked: {
        Utils.request('POST', `/reminder`, {"email": emailAddress.text});
        stack.push("qrc:/ui/Login/EnterVerificationCode.qml", {email: emailAddress.text})
    }

}
