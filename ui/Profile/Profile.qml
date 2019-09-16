import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils

ProfileForm {

    email.text: root.state.user.email;
    password.text: 'a' * root.state.user.passwordLength + 'a';
    name.text: root.state.user.fullName;
    profileName.text: root.state.user.fullName;
    phone.text: root.state.user.phone
//    profilePicture.source: root.state.user.profilePicture

    Component.onCompleted: function () {
        function updateModel (data) {
            profession.model = data.map(rawData => rawData.label);
        }
        Utils.request('GET', `/profession`, undefined, updateModel);
    }

    name.onEditingFinished: {
        [root.state.user.firstName, root.state.user.lastName] = [...name.text.split(' ')]
    }

    phone.onEditingFinished: {
        root.state.user.phone = phone.text;
    }

    profession.onAccepted: {
        root.state.user.profession = profession.currentText;
    }

    next.onClicked: {
        Utils.request('PUT', `/user/` , root.state.user);
    }

}
