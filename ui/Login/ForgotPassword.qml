import QtQuick 2.12

ForgotPasswordForm {

    sendVerificationCode.onClicked: {
        console.log("Send verif code for ", emailAddress.text)
        stack.push("qrc:/ui/Login/EnterVerificationCode.qml")
    }

}
