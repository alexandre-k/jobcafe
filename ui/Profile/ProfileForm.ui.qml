import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import "../BackButton"

ScrollView {
    property alias name: name
    property alias email: email
    property alias password: password
    property alias phone: phone
    property alias profession: profession
    property alias next: next
    property alias profileName: profileName
    property alias profilePicture: profilePicture
    property int profilePictureSize: 70
    property alias takePhotoArea: takePhotoArea

    ColumnLayout {
        width: root.width
        spacing: 10

        BackButton {}

        Item {
            width: parent.width
            height: profilePictureSize
            Layout.alignment: Qt.AlignHCenter

            Rectangle {
                id: frame
                width: profilePictureSize
                height: profilePictureSize
                radius: 10
                visible: false
            }

            Image {
                id: profilePicture
                source: "file://" + root.appDir + "/profile_picture.png"
                cache: true
                width: profilePictureSize
                height: profilePictureSize
                fillMode: Image.PreserveAspectCrop
                anchors.centerIn: parent
                sourceSize: Qt.size(parent.width, parent.height)
                smooth: true
                visible: true
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: frame
                }
            }
            Image {
                id: takePhoto
                source: "qrc:/ui/Profile/images/photo.svg"
                fillMode: Image.PreserveAspectCrop
                width: 20
                height: 20
                anchors.bottom: profilePicture.bottom
                anchors.right: profilePicture.right
                anchors.bottomMargin: -10
                anchors.rightMargin: -10

                MouseArea {
                    id: takePhotoArea
                    anchors.fill: parent
                }
            }
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
            text: root.state.user.membership ? root.state.user.membership.label + " Membership" : "No membership"
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
            image: "qrc:/ui/Profile/images/name.svg"
        }

        Entry {
            id: email
            name: "Email"
            image: "qrc:/ui/Profile/images/mail.svg"
        }

        Entry {
            id: password
            echoMode: TextInput.Password
            name: "Password"
            image: "qrc:/ui/Profile/images/password.svg"
            editable: false
        }

        Entry {
            id: phone
            name: "Phone number"
            image: "qrc:/ui/Profile/images/phone.svg"
            optional: true
        }

        ComboBox {
            id: profession
            model: []

            background: Rectangle {
                implicitWidth: parent.width
                implicitHeight: parent.height + 10
                color: "transparent"
                Image {
                    source: "qrc:/ui/Profile/images/account.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 15
                    anchors.leftMargin: 5
                }
                Rectangle {
                    id: line
                    width: parent.width
                    height: 1
                    anchors.bottom: parent.bottom
                    color: "#b4b4b4"
                }

                Text {
                    text: "Optional*"
                    anchors.right: parent.right
                    anchors.top: parent.bottom
                    anchors.topMargin: 5
                    font {
                        family: "Lato"
                        pointSize: 8
                    }
                    color: "#000"

                }
            }

            contentItem: Text {
                leftPadding: 40
                text: profession.displayText
                font {
                    family: "Segoe UI"
                    pointSize: 14
                }
                color: "#000100"
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 3 * root.width / 4
            Layout.topMargin: 20

            indicator: Text {
                id: edit
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                text: "Edit"
                font {
                    family: "Lato"
                    pointSize: 12
                }
                color: "#000"
            }

//                   Connections {
//                       target: control
//                       onPressedChanged: canvas.requestPaint()
//                   }

        }

        Button {
            id: next
            text: qsTr("Save changes")
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 3 * root.width / 4
            Layout.topMargin: 20
            Layout.bottomMargin: 20
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




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
