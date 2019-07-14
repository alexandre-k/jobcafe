import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 410
    height: 580
    property alias currentPassword: currentPassword
    property alias newPassword: newPassword
    property alias confirmPassword: confirmPassword
    property alias saveChanges: saveChanges

    ColumnLayout {
        id: passwordLayout
        anchors.rightMargin: 30
        anchors.leftMargin: 30
        anchors.bottomMargin: 150
        anchors.topMargin: 20
        anchors.fill: parent
        clip: false

        Layout.fillWidth: true
        Layout.fillHeight: true

        TextField {
            id: currentPassword
            Layout.fillWidth: true
            placeholderText: "Current password"
            echoMode: TextInput.Password
        }
        TextField {
            id: newPassword
            Layout.fillWidth: true
            placeholderText: "New password"
            echoMode: TextInput.Password
        }

        TextField {
            id: confirmPassword
            Layout.fillWidth: true
            placeholderText: "Confirm password"
            echoMode: TextInput.Password
        }

        Button {
            id: saveChanges
            Layout.fillWidth: true
            text: qsTr("Save changes")
        }
    }
}
