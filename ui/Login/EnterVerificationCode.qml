import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3

EnterVerificationCodeForm {

    sendCodeAgainArea.onClicked: {
        console.log("POST request")
    }

    verify.onClicked: {
                console.log("Verify ", verificationCode.text)
            stack.push("qrc:/ui/Login/CreateNewPassword.qml");
        }

}
