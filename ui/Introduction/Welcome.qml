import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
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
            color: Style.attributes.gray

            ColumnLayout {

                anchors.centerIn: parent

                Text {
                    id: title
                    text: "Looooooo Aaaaaannnn"
                    anchors.margins: 50
                    anchors.bottom: subtitle.top
                    font {
                        bold: true
                        pointSize: 21
                        family: "Europa"
                    }
                }

                Rectangle {
                    height: 1
                    width: 50
                    color: "black"
                }

                Text {
                    id: subtitle
                    text: "we are here to help"
                }
            }
        }

        footer:Button {
            id: getStarted
            text: "Get started"
            contentItem: Text {
                text: getStarted.text
                font.capitalization: Font.AllUppercase
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            height: 70
            background: Rectangle {
                color: "#3497fd"
            }

            onClicked: welcome.parent.push("qrc:/ui/Login/Login.qml", {stack: welcome.parent})
        }
    }
