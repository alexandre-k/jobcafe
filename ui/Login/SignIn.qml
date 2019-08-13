import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils


SignInForm {
    id: signinForm
    property bool loggedIn: false

   signin.onClicked: {


       const verifyUser = (data) => {
           if (data.email === username.text && data.password === password.text) {
               root.state.user = data;
               stack.push("qrc:/ui/MainActivity/HomeFrame.qml");
               return true;
           }
       }

       Utils.request('GET', `/user/` + username.text, undefined, verifyUser);
   }

   passwordReminderArea.onClicked: {

       stack.push("qrc:/ui/Login/ForgotPassword.qml");
   }

}
