import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    property alias username: username
    property alias password: password
    property alias passwordReminder: passwordReminder
    property alias signin: signin
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 50
        anchors.centerIn: parent

        TextField {
            id: username
            Layout.fillWidth: true
            placeholderText: "Username"
        }
        TextField {
            id: password
            Layout.fillWidth: true
            echoMode: TextInput.Password
            placeholderText: "Password"
        }
        Text {
            id: passwordReminder
            text: "Forgot Password"
            font {
                family: "Gibson"
                underline: true
            }
            color: "#3497fd"

            MouseArea {
                id: passwordReminderArea
                anchors.fill: parent
            }
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 30
        }
    }
    Button {
        id: signin
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        text: qsTr("sign in")
        font.capitalization: Font.AllUppercase
        Material.background: Material.Blue
        Material.foreground: "#ffffff"
    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
