import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

    Page {
        id: welcome
        anchors.fill: parent

        header:Image {
            source: "qrc:/images/introduction.svg"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            anchors.fill: parent
            color: "#eceff0"

            ColumnLayout {

                Text {
                    id: title
                    Layout.topMargin: 50
                    Layout.leftMargin: 50
                    text: "Looooooo Aaaaaannnn"
                    font {
                        bold: true
                        pointSize: 25
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
                        pointSize: 15
                        family: "Europa"
                    }
                    color: "#7f7f7f"
                }
            }
        }

        footer:Button {
            id: getStarted
            Material.background: Material.Blue
            text: "Get started"
            contentItem: Text {
                text: getStarted.text
                font {
                    capitalization: Font.AllUppercase
                    letterSpacing: 2
                    bold: true
                }
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            height: 70
            onClicked: stack.push("qrc:/ui/Login/Login.qml")
        }
    }
