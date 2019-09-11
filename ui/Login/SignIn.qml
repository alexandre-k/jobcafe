import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils
import "../LoadingMessage"
import "../ErrorMessage"


SignInForm {
    id: signinForm
    property bool loggedIn: false

    username.onEditingFinished: password.focus = true
    password.onEditingFinished: signin.focus = true

    signin.next.onClicked: {
        const onSuccess = (data) => {
            root.state.user = data;
            loadingMessage.close();
            stack.push("qrc:/ui/MainActivity/HomeFrame.qml");
            return true;
        }

        const onError = (status, response) => {
            loadingMessage.close();
            errorMessage.msg = "Unable to sign you in:\n" + response;
            errorMessage.open();
        }

        Utils.request('POST', `/user/` + username.text, {
                         "password": password.text}, onSuccess, onError);
        loadingMessage.open();
    }

    passwordReminderArea.onClicked: {
       stack.push("qrc:/ui/Login/ForgotPassword.qml");
   }

   ErrorMessage {
       id: errorMessage
   }

   LoadingMessage {
       id: loadingMessage
       msg: "Signing you in. Please, wait..."
   }

}
