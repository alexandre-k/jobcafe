import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../Utils.js" as Utils
import "../ErrorMessage"
import "../LoadingMessage"

SignUpForm {

    next.onClicked: {
        function onSuccess(data) {
            loadingMessage.close();
            root.state.user = data;
            stack.push("qrc:/ui/MainActivity/HomeFrame.qml");
        }

        function onError(status, response) {
            loadingMessage.close();
            errorMessage.msg = "Unable to sign up. "
            if (typeof response === "string") {
                errorMessage.msg += response;
            }
            errorMessage.open();
        }

        const user_name = name.text.trim();
        const user_email = email.text.trim();
        const user_password = password.text.trim();
        if (user_name === '' || user_email === '' || user_password === '')  {
            errorMessage.msg = "There is one empty field remaining!";
            errorMessage.open();
            return;
        }
        const [firstname, lastname] = user_name.split(' ');
        if (firstname === undefined || lastname === undefined) {
            errorMessage.msg = "Write your firstname and lastname with a space in between.\nExample: John Doe.";
            errorMessage.open();
            return;
        }

        const user = {
            email: email.text,
            firstName: firstname,
            lastName: lastname,
            password: password.text,
            isNewMessageNotified: true,
            isNewServiceAdvertised: true,
            subscribed: true,
            isStaff: false,
            // profilePicture: ""
        }
        Utils.request('POST', '/user', user, onSuccess, onError);
        loadingMessage.open();


    }

    ErrorMessage {
        id: errorMessage
    }

    LoadingMessage {
        id: loadingMessage
        msg: "Registering user. Please, wait..."
    }
}
