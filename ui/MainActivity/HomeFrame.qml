import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {

    anchors.fill: parent
    SwipeView {
        id: view
        currentIndex: tabBar.currentIndex
        anchors.fill: parent

        Home {}
        MyFiles {}
        Templates {}
    }

    footer: TabBar {
        id: tabBar
        TabButton {
            ColumnLayout {
                Image {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: 40
                    source: "images/home.svg"
                }
                Label {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: 40
                    text: qsTr("Home")
                }
            }
        }

        TabButton {
            ColumnLayout {
                Image {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: 40
                    source: "images/my_files.svg"
                }
                Label {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: 40
                    text: qsTr("My Files")
                }
            }
        }

        TabButton {
            ColumnLayout {
                Image {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: 40
                    source: "images/templates.svg"
                }
                Label {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: 40
                    text: qsTr("Templates")
                }
            }
        }
    }
}
