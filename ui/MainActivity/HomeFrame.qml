import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Page {
    id: homeFrame
    function resetView () {
        view.setCurrentIndex(0)
        tabBar.setCurrentIndex(0)
    }

    SwipeView {
        id: view
        currentIndex: tabBar.currentIndex
        anchors.fill: parent
        onCurrentIndexChanged: {
            myFiles.tabBar.currentIndex = 0
        }

        Home { id: home }
        MyFiles {
            id: myFiles
            backButtonArea.onClicked: resetView()
        }
        Templates {
            id: templates
            backButtonArea.onClicked: resetView()
        }
    }

    footer: TabBar {
        id: tabBar
        contentHeight: 80    
        background: Rectangle {
            LinearGradient {
                anchors.fill: parent
                start: Qt.point(0, 10)
                end: Qt.point(0, 0)
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "white" }
                    GradientStop { position: 1.0; color: "lightGray" }
                }
            }
            border.color: "#666666"
            border.width: 5
        }
        TabButton {
            ColumnLayout {
                Image {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.topMargin: 20
                    Layout.leftMargin: root.width / 10
                    source: "images/home.svg"
                }
                Label {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: root.width / 10
                    text: qsTr("Home")
                }
            }
        }

        TabButton {
            ColumnLayout {
                Image {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.topMargin: 20
                    Layout.leftMargin: root.width / 10
                    source: "images/my_files.svg"
                }
                Label {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: root.width / 10
                    text: qsTr("My Files")
                }
            }
        }

        TabButton {
            ColumnLayout {
                Image {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.topMargin: 20
                    Layout.leftMargin: root.width / 10
                    source: "images/templates.svg"
                }
                Label {
                    Layout.alignment: Qt.AlignCenter
                    Layout.leftMargin: root.width / 10
                    text: qsTr("Templates")
                }
            }
        }
    }
}
