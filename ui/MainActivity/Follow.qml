import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Popup {
    id: followDialog
    width: root.width - 20
    height: 300
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
            height: 500
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
                        text: "Follow our Social Channels"
                    }

                    Rectangle {
                        width: parent.width
                        height: 1
                        color: "darkGray"
                        Layout.topMargin: 10
                        Layout.bottomMargin: 10
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }

                    RowLayout {
                        spacing: 30
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        Image {

                            fillMode: Image.PreserveAspectFit
                            Layout.maximumHeight: 80
                            Layout.maximumWidth: 80
                            source: "facebook.svg"
                            MouseArea {
                                anchors.fill: parent
                                onClicked: Qt.openUrlExternally("https://www.facebook.com")
                            }
                        }

                        Image {

                            fillMode: Image.PreserveAspectFit
                            Layout.maximumHeight: 80
                            Layout.maximumWidth: 80
                            source: "instagram.svg"
                            MouseArea {
                                anchors.fill: parent
                                onClicked: Qt.openUrlExternally("https://www.instagram.com")
                            }
                        }

                        Image {
                            width: 10
                            height: 10
                            fillMode: Image.PreserveAspectFit
                            Layout.maximumHeight: 80
                            Layout.maximumWidth: 80
                            source: "twitter.svg"
                            MouseArea {
                                anchors.fill: parent
                                onClicked: Qt.openUrlExternally("https://www.twitter.com")
                            }
                        }
                    }
                }
            }

            Rectangle {
                id: cancelFollow
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
                        pointSize: 20
                    }
                    color: "#007aff"

                    anchors.centerIn: parent
                    MouseArea {
                        anchors.fill: parent
                        onClicked: followDialog.close()
                    }
                }
            }
    }
}
