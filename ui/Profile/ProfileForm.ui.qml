import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import "../BackButton"

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

    ColumnLayout {

        BackButton {
            Layout.margins: 20
        }

        Image {
            id: profilePicture
            fillMode: Image.PreserveAspectFit
            Layout.leftMargin: 50
            Layout.rightMargin: 50
            Layout.minimumWidth: 300
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
            Layout.alignment: Qt.AlignHCenter

        }

        Text {
            text: root.state.user.membership? root.state.user.membership : "No membership"
            font {
                family: "Montserrat"
                pointSize: 14
            }
            color: "#444f63"
            opacity: 0.56
            Layout.alignment: Qt.AlignHCenter

        }

        Entry {
            id: name
            name: "Name"
            image: "name.svg"
        }

        Entry {
            id: email
            name: "Email"
            image: "mail.svg"
        }

        Entry {
            id: password
            echoMode: TextInput.Password
            name: "Password"
            readOnly: true
            image: "password.svg"
        }

        Entry {
            id: phone
            name: "Phone number"
            image: "phone.svg"
        }

        ComboBox {
            id: profession
            model: []
            Image {
                source: "account.svg"
                fillMode: Image.PreserveAspectFit
            }
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumWidth: 300
        }

        Button {
            id: next
            text: qsTr("Save changes")
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumWidth: 300
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
