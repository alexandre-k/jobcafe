import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

    Page {
        id: splashScreen

        Timer {
            id: timer
            interval: 500
            running: true
            repeat: false
            onTriggered: {
                stack.push("qrc:/ui/Introduction/Welcome.qml")
            }
        }

        Component.onCompleted: {
            timer.start();
        }

        ColumnLayout {
            width: root.width
            RowLayout {
                width: parent.width
                Layout.topMargin: root.height / 3

                Rectangle {
                    width: 80
                    height: 80
                    radius: 50
                    color: "transparent"
                    border {
                        color: "black"
                    }
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.leftMargin: root.width / 6
                    Rectangle {
                        width: 70
                        height: 70
                        radius: 50
                        color: "transparent"
                        border {
                            color: "black"
                        }
                        anchors.centerIn: parent
                    }
                }

                Text {
                    text: "Jjjjjjjjjjjjj"
                    font {
                        family: "Magnolia Script"
                        pointSize: 40
                    }
                    color: "#032f3e"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
            }

            Text {
                text: "Loading..."
                font {
                    family: "Open Sans"
                    pointSize: 16
                }
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.topMargin: 50
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                color: "#444f63"
            }
        }

        footer: ColumnLayout {
            Text {
                text: "Copyright @ 2014-2019 Mmmmmmmm Pty Ltd."
                font {
                    family: "Open Sans"
                    pointSize: 13
                }
                color: "#444f63"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Text {
                text: "All rights reserved."
                font {
                    family: "Open Sans"
                    pointSize: 13
                }
                color: "#444f63"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.bottomMargin: 20
            }

        }
    }
