import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils


    SignInForm {
        id: signinForm
        property bool loggedIn: false

       signin.onClicked: {
           stack.push("qrc:/ui/MainActivity/Home.qml");

           const verifyUser = (data) => {
               console.log(data.password)
               if (data.email === username.text && data.password === password.text) {
                   stack.push(home);
                   return true;
               }
           }

           Utils.request('GET', `/user/` + username.text, undefined, verifyUser);
       }

       passwordReminder.onLinkActivated: {
           stack.push(forgotPassword)
       }

    }
//    ForgotPassword {
//           id: forgotPassword
//       }

