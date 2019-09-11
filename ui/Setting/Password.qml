import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils
import "../ErrorMessage"

PasswordForm {

    id: passwordForm

    property bool currentPasswordMatched: false;

    function validatePassword() {
        if (newPassword.text === '' || confirmPassword.text === '') {
            errorMessage.msg = "Empty password given!";
            errorMessage.open();
            return false;
        }

        if (newPassword.text !== confirmPassword.text) {
            errorMessage.msg = "Passwords do not match!"
            errorMessage.open();
            return false;
        }

        return true;
    }

    currentPassword.onEditingFinished: {
        if (currentPassword.text === root.state.user.password) {
            currentPasswordMatched = true;
        } else {
            currentPasswordMatched = false;
        }
    }

    newPassword.onEditingFinished: {
        var validPassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{6,16}$/;
        if (validPassword.test(newPassword.text)) {
            return true;
        }
        else {
            newPassword.text = ''
            return false;

        }
    }

    confirmPassword.onEditingFinished: {
        return validatePassword();
    }

    saveChanges.onClicked: {
        if (validatePassword()) {
            root.state.user.password = newPassword.text;
            Utils.request('PUT', `/user/`, root.state.user);
        }
    }

    ErrorMessage { id: errorMessage }
}
