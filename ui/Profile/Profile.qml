import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils

ProfileForm {
    property var user: ({})
    email.text: user.email;
    password.text: user.password;
    name.text: user.fullName;
    profileName.text: user.fullName;
    phone.text: user.phone
    profilePicture.source: user.profilePicture

    Component.onCompleted: function () {
        function updateModel (data) {
            profession.model = data.map(rawData => rawData.label);
        }
        Utils.request('GET', `/profession`, undefined, updateModel);
    }

    name.onEditingFinished: {
        [user.firstName, user.lastName] = [...name.text.split(' ')]
    }

    phone.onEditingFinished: {
        user.phone = phone.text;
    }

    profession.onAccepted: {
        user.profession = profession.currentText;
    }

    next.onClicked: {
        Utils.request('PUT', `/user/` , user);
    }

}
