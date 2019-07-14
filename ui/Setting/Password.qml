import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils

PasswordForm {

    id: passwordForm

    property bool currentPasswordMatched: false;
    property var user: user

    function validatePassword() {
        if (newPassword.text === '' || confirmPassword.text === '') {
            console.log('Empty password given!');
            return false;
        }
        return true;
    }

    currentPassword.onEditingFinished: {
        console.log('Entered password: ', currentPassword.text)
        if (currentPassword.text === user.password) {
            currentPasswordMatched = true;
        } else {
            currentPasswordMatched = false;
        }
    }

    newPassword.onEditingFinished: {
        var validPassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{6,16}$/;
        if (validPassword.test(newPassword.text)) {
            console.log('correct');
            return true;
        }
        else {
            console.log('Your password should be more than 6 characters, have at least one uppercase and lowercase letter, one number and one symbol.')
            newPassword.text = ''
            return false;

        }
    }

    confirmPassword.onEditingFinished: {
        return validatePassword();
    }

    saveChanges.onClicked: {
        if (validatePassword()) {
            Utils.request('PUT', `/user/`, user);
        }
    }
}
