import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        anchors.centerIn: parent
        spacing: 1

        TextField {
            id: name
            Layout.fillWidth: true
            placeholderText: "Name"
        }

        TextField {
            id: email
            Layout.fillWidth: true
            placeholderText: "Email"
        }
        TextField {
            id: password
            Layout.fillWidth: true
            echoMode: TextInput.Password
            placeholderText: "Password"
        }
    }
    footer: Button {
        id: next
        text: qsTr("next")
        font.capitalization: Font.AllUppercase
        Material.background: Material.Blue
        Material.foreground: "#ffffff"
//        contentItem: Text {
//            text: getStarted.text
//            font.capitalization: Font.AllUppercase
//            color: "white"
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//        }
//            height: 70
//            width: 200
//            background: Rectangle {
//                color: "#3497fd"
//                radius: 30

//        }
    }
}
