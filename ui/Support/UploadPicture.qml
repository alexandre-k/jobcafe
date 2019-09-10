import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Popup {
    id: followDialog
    width: root.width - 20
    height: 300
    implicitWidth: facebook.width * 3
    modal: true
    x: Math.round((parent.width - width) / 2)
    y: Math.round((parent.height + height) / 2)
    parent: Overlay.overlay
    padding: 0
    topInset: 50
    bottomInset: 100
    contentItem:
        ColumnLayout {
            width: parent.width
            height: 600
            spacing: 0
            Rectangle {
                width: root.width - 20
                height: 200
                radius: 10
                color: "black"
                ColumnLayout {
                    width: parent.width
                    Text {
                        font {
                            family: "Lato"
                            pointSize: 13
                        }
                        color: "#8f8f8f"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        Layout.topMargin: 15
                        Layout.bottomMargin: 15
                        text: "Upload Picture"
                    }

                    Rectangle {
                        width: parent.width
                        height: 1
                        color: "darkGray"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Rectangle {
                        implicitWidth: takeNewPhoto.width
                        implicitHeight: takeNewPhoto.height
                        color: "transparent"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        Layout.topMargin: 15
                        Layout.bottomMargin: 15

                        Text {
                            id: takeNewPhoto
                            font {
                                family: "SF UI Display"
                                pointSize: 18
                            }
                            color: "#007aff"

                            text: "Take a New Photo"
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: console.log("Take new photo clicked")
                        }
                    }

                    Rectangle {
                        width: parent.width
                        height: 1
                        color: "darkGray"

                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    Rectangle {
                        implicitWidth: chooseExistingPhoto.width
                        implicitHeight: chooseExistingPhoto.height
                        color: "transparent"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        Layout.topMargin: 15
                        Layout.bottomMargin: 15

                        Text {
                            id: chooseExistingPhoto
                            font {
                                family: "SF UI Display"
                                pointSize: 18
                            }
                            color: "#007aff"
                            text: "Choose existing photo"
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: console.log("Choose existing photo clicked")
                        }
                    }
                }
            }

            Rectangle {
                id: cancelUpload
                width: root.width - 20
                height: 50
                Layout.topMargin: -40
                Layout.preferredHeight: 50
                Layout.preferredWidth: root.width - 10
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                color: "white"
                radius: 10
                Text {
                    text: "Cancel"
                    font {
                        family: "SF UI Display"
                        bold: true
                        pointSize: 18
                    }
                    color: "#007aff"

                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: uploadPicture.close()
                    }
                }
            }
    }
}

//FileDialog {
//    id: uploadPictureDialog
//    title: "Choose a picture"
//    folder: shortcuts.home
//}
