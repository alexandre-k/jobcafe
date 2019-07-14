import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3

Page {
    property alias name: name
    property alias email: email
    property alias password: password
    property alias phone: phone
    property alias profession: profession
    property alias next: next
    property alias profileName: profileName
    property alias profilePicture: profilePicture
    anchors.fill: parent

    header: Column {
        width: parent.width
        anchors.top: parent.top
        anchors.margins: 10
        Image {
            anchors.left: parent.left
            anchors.margins: 20
            source: "/images/arrow-left258.svg"
        }
    }

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 50

        Image {
            id: profilePicture
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: profileName
            text: "Loading..."
            font {
                family: "Montserrat"
                bold: true
                pointSize: 24
            }
            color: "#444f63"

            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            text: "Basic Membership"
            font {
                family: "Montserrat"
                pointSize: 14
            }
            color: "#444f63"
            opacity: 0.56
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
        }

        TextField {
            id: name
            Layout.fillWidth: true
            leftPadding: 35
            placeholderText: "Name"
            Image {
                source: "name.svg"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 5
                fillMode: Image.PreserveAspectFit
            }
        }

        TextField {
            id: email
            Layout.fillWidth: true
            leftPadding: 35
            placeholderText: "Email"
            readOnly: true
            Image {
                source: "mail.svg"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 5
                fillMode: Image.PreserveAspectFit
            }
        }
        TextField {
            id: password
            Layout.fillWidth: true
            leftPadding: 35
            echoMode: TextInput.Password
            placeholderText: "Password"
            readOnly: true
            Image {
                source: "password.svg"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 5
                fillMode: Image.PreserveAspectFit
            }
        }

        TextField {
            id: phone
            Layout.fillWidth: true
            leftPadding: 35
            placeholderText: "Phone number"
            Image {
                source: "phone.svg"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 5
                fillMode: Image.PreserveAspectFit
            }
        }

        ComboBox {
            id: profession
            Layout.fillWidth: true
            leftPadding: 35
            model: []
            Image {
                source: "account.svg"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 5
                fillMode: Image.PreserveAspectFit
            }
        }

        Button {
            id: next
            Layout.fillWidth: true
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            text: qsTr("Save changes")
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
        }
    }
}






/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
