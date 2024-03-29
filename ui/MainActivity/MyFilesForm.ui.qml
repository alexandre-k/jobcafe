import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../JTabButton"

Page {
    id: myFilesForm

    property alias swipeView: swipeView
    property alias tabBar: tabBar
    property alias backButtonArea: backButtonArea
    property alias backButton: backButton

    header: ColumnLayout {
        Rectangle {
            id: backButton
            width: 25
            height: 25
            opacity: 1
            color: "transparent"
            Layout.margins: 20
            Layout.bottomMargin: root.height / 60
            Image {
                source: "/images/arrow-left258.svg"
            }
            MouseArea {
                id: backButtonArea
                anchors.fill: parent
            }

        }

        Text {
            width: parent.width
            text: qsTr("My files")
            color: "#444f63"
            font {
                pointSize: 24
                bold: true
                family: "Montserrat"
            }
            Layout.leftMargin: 30
            Layout.bottomMargin: 20
        }

        TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            Layout.maximumWidth: root.width - 30
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            JTabButton {
                textContent: qsTr("MMMMMMM")
            }

            JTabButton {
                textContent: qsTr("MMMMMMM")
            }

            JTabButton {
                textContent: qsTr("MMMMMMM")
            }
        }
    }

    SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
        anchors.fill: parent

        Page {

            Text {
                anchors.centerIn: parent
                text: "Google 1"
                font {
                    family: "Lato"
                    pointSize: 30
                    letterSpacing: 1
                    bold: true
                }
                color: "#515253"
            }
        }

        Page {
            Text {
                anchors.centerIn: parent
                text: "Google 2"
                font {
                    family: "Lato"
                    pointSize: 30
                    letterSpacing: 1
                    bold: true
                }
                color: "#515253"
            }
        }

        Page {

            Text {
                anchors.centerIn: parent
                text: "Google 3"
                font {
                    family: "Lato"
                    pointSize: 30
                    letterSpacing: 1
                    bold: true
                }
                color: "#515253"
            }
        }
    }
}

