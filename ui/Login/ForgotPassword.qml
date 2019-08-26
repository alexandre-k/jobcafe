import QtQuick 2.12
import "../ErrorMessage"
import "../Utils.js" as Utils

ForgotPasswordForm {

    sendVerificationCode.next.onClicked: {
        if (emailAddress.text !== "") {
            Utils.request('POST', `/reminder`, {"email": emailAddress.text});
            stack.push("qrc:/ui/Login/EnterVerificationCode.qml", {email: emailAddress.text})
        } else {
            error.msg = "Enter a valid mail address."
            error.open()
        }
    }

    ErrorMessage { id: error }

}
