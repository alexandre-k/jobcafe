import QtQuick 2.12
import QtQuick.Controls.Material 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    property alias name: name
    property alias email: email
    property alias password: password
    property alias signup: signup

    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        spacing: 1

        Rectangle { height: 25; color: "transparent" }

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

        Rectangle { height: 25; color: "transparent" }
    }
    footer: NextButton { id: signup; btext: "next" }
}
