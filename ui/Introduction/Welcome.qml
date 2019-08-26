import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

    Page {
        id: welcome
        anchors.fill: parent

        header:ColumnLayout {
            Rectangle { height: 100; color: "transparent" }
            Image {
                source: "qrc:/images/introduction.svg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            anchors.fill: parent
            color: "#eceff0"

            ColumnLayout {

                Text {
                    id: title
                    Layout.topMargin: 50
                    Layout.leftMargin: 50
                    Layout.maximumWidth: 360
                    text: "Looooooo Aaaaaannnn kkk"
                    fontSizeMode: Text.Fit
                    wrapMode: Text.WordWrap
                    font {
                        bold: true
                        pointSize: 38
                        family: "Europa"
                    }
                    color: "#7f7f7f"
                }

                Rectangle {
                    Layout.leftMargin: 50
                    height: 1
                    width: 50
                    color: "black"
                }

                Text {
                    id: subtitle
                    Layout.leftMargin: 50
                    text: "we are here to help"
                    font {
                        pointSize: 22
                        family: "Europa"
                    }
                    color: "#7f7f7f"
                }
            }
        }

        footer: RowLayout {
            id: getStarted
            spacing: 0

            Rectangle {
                Layout.preferredWidth: root.width - 80
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 80
                color: "#41aaff"
                Text {
                    text: "Get started"
                    font {
                        capitalization: Font.AllUppercase
                        pointSize: 18
                        letterSpacing: 3
                        bold: true
                    }
                    color: "white"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                color: "#3497fd"
                Layout.preferredWidth: 80
                Layout.preferredHeight: 80
                Layout.alignment: Qt.AlignRight

                Image {
                    source: "right_arrow.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors.centerIn: parent

                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: stack.push("qrc:/ui/Login/Login.qml")
            }

        }
    }
