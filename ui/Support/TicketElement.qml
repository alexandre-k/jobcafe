import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

ColumnLayout {
    property int profilePictureWidth: 50
    property var ticketsViewStack

    Rectangle {
        height: 100
        width: root.width
        color: "#dfe2e8"
        border.color: "white"
        border.width: 1
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("TICKETS VIEW : ", ticketsViewStack)
                ticketsViewStack.push("qrc:/ui/Support/SupportMessaging.qml", {
                    ticketId: id,
                    ticketTitle: title,
                    ticketOwner: owner.email,
                    isOpen
                })
            }
        }

        RowLayout {
            id: ticketRow
            height: 100
            width: parent.width

            Item {
                id: profilePicture
                Layout.preferredHeight: profilePictureWidth
                Layout.preferredWidth: profilePictureWidth
                Layout.leftMargin: 20

                Rectangle {
                    id: frame
                    width: profilePictureWidth
                    height: profilePictureWidth
                    visible: false
                    radius: profilePictureWidth
                    anchors.centerIn: parent
                    anchors.left: parent.left
                }

                Image {
                    width: profilePictureWidth
                    height: profilePictureWidth
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:ui/MainActivity/images/profile_picture.png"
                    visible: true
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: frame
                    }
                }
            }

            ColumnLayout {
                height: 100 + titleText.implicitHeight
                RowLayout {
                    Text {
                        id: fullName
                        text: owner.fullName
                        Layout.leftMargin: 20
                        Layout.fillWidth: true
                        Layout.preferredWidth: fullName.text.length
                        font {
                            family: "Source Sans Pro"
                            bold: true
                            pointSize: 16
                        }
                        color: "#4d4f5c"
                    }

                    Text {
                        text: createdDate
                        Layout.rightMargin: 20
                        Layout.alignment: Qt.AlignRight
                        font {
                            family: "Source Sans Pro"
                            pointSize: 13
                        }
                        color: "#43425d"
                    }
                }

                Text {
                    id: titleText
                    Layout.leftMargin: 20
                    Layout.maximumWidth: root.width - 100
                    text: title
                    font {
                        family: "Source Sans Pro"
                        pointSize: 16
                    }
                    color: "#43425d"
                    wrapMode: Text.WordWrap
                    fontSizeMode: Text.Fit
                }
            }
        }
    }
}
