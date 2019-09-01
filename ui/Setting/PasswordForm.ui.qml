import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3

Page {
    id: page
    property alias currentPassword: currentPassword
    property alias newPassword: newPassword
    property alias confirmPassword: confirmPassword
    property alias saveChanges: saveChanges

    ColumnLayout {
        id: passwordLayout
        width: root.width - 40

        TextField {
            id: currentPassword
            Layout.fillWidth: true
            Layout.leftMargin: 40
            Layout.topMargin: 20
            placeholderText: "Current password"
            echoMode: TextInput.Password
        }
        TextField {
            id: newPassword
            Layout.fillWidth: true
            Layout.leftMargin: 40
            Layout.topMargin: 30
            placeholderText: "New password"
            echoMode: TextInput.Password
        }

        TextField {
            id: confirmPassword
            Layout.fillWidth: true
            Layout.leftMargin: 40
            Layout.topMargin: 30
            placeholderText: "Confirm password"
            echoMode: TextInput.Password
        }

        Button {
            id: saveChanges
            text: qsTr("Save")
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.preferredHeight: 70
            Layout.fillWidth: true
            Layout.leftMargin: 40
            Layout.topMargin: 40
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font {
                family: "Roboto"
                pointSize: 16
                capitalization: Font.MixedCase
                bold: false
            }
        }
    }
}
