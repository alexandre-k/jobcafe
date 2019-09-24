import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: welcome

    Rectangle {
        anchors.fill: parent
        color: "#eceff0"

        ColumnLayout {
            spacing: 0
            Rectangle { Layout.preferredHeight: root.height / 10; color: "transparent" }
            Image {
                source: "qrc:/images/introduction.svg"
                fillMode: Image.PreserveAspectFit
                Layout.preferredWidth: root.width
            }

            Text {
                id: title
                Layout.topMargin: root.height / 30
                Layout.leftMargin: root.width / 8
                Layout.maximumWidth: 3 * root.width / 4
                text: "Looooooo Aaaaaannnn kkk"
                fontSizeMode: Text.Fit
                wrapMode: Text.WordWrap
                font {
                    bold: true
                    pointSize: root.welcomeTitleSize
                    family: "Europa"
                }
                color: "#7f7f7f"
            }

            Rectangle {
                Layout.leftMargin: root.width / 8
                height: 1
                Layout.preferredWidth: root.width / 4
                Layout.minimumWidth: 50
                color: "black"
            }

            Text {
                id: subtitle
                Layout.leftMargin: root.width / 8
                Layout.maximumWidth: 3 * root.width / 4
                text: "we are here to help"
                fontSizeMode: Text.Fit
                wrapMode: Text.WordWrap
                font {
                    pointSize: root.welcomeSubtitleSize
                    family: "Europa"
                }
                color: "#7f7f7f"
            }
        }
    }

    footer: RowLayout {
        id: getStarted
        width: root.width
        height: root.height / 10
        spacing: -2

        Rectangle {
            Layout.preferredWidth: (3 * root.width / 4) + 5
            Layout.alignment: Qt.AlignLeft
            Layout.preferredHeight: parent.height
            color: "#41aaff"
            Text {
                text: "Get started"
                font {
                    capitalization: Font.AllUppercase
                    pointSize: root.welcomeGetStartedSize
                    letterSpacing: 3
                    bold: true
                }
                color: "white"
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: stack.push("qrc:/ui/Login/Login.qml")
            }
        }

        Rectangle {
            color: "#3497fd"
            Layout.preferredWidth: (root.width / 4) + 5
            Layout.preferredHeight: root.height / 10
            Layout.alignment: Qt.AlignRight

            Image {
                source: "right_arrow.svg"
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent

            }
            MouseArea {
                anchors.fill: parent
                onClicked: stack.push("qrc:/ui/Login/Login.qml")
            }

        }

    }
}
