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
        function updateUser(data) {
            loadingMessage.close();
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
        Utils.request('POST', '/user', user, updateUser);
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
