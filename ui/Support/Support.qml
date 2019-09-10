import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../BackButton"
import "../JTabButton"

Page {
    id: support

    header: Rectangle {
        color: "#eceff0"
        width: root.width
        height: 230
        ColumnLayout {
            width: parent.width
            height: parent.height
            BackButton {
                Layout.margins: 20
            }

            Text {
                id: aboutTitle
                width: parent.width
                text: qsTr("Support")
                color: "#444f63"
                font {
                    pointSize: 24
                    bold: true
                    family: "Montserrat"
                }
                Layout.margins: -10
                Layout.leftMargin: 40
            }

            TabBar {
                id: tabBar
                currentIndex: swipeView.currentIndex
                Layout.fillWidth: true
                height: 100
                background: Rectangle {
                    color: "transparent"
                }

                JTabButton {
                    textContent: qsTr("Open tickets")
                }

                JTabButton {
                    textContent: qsTr("Closed tickets")
                }
            }
        }
    }

    SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
        anchors.fill: parent
        anchors.topMargin: 15

        StackView {
            id: openTicketsView
            implicitHeight: parent.height
            implicitWidth: parent.width
            initialItem: openedTickets

            Tickets {
                id: openedTickets
                isOpen: true
                ticketsView: openTicketsView
            }
        }

        StackView {
            id: closeTicketsView
            implicitHeight: parent.height
            implicitWidth: parent.width
            initialItem: openedTickets

            Tickets {
                id: closedTickets
                isOpen: false
                ticketsView: closeTicketsView
            }
        }
    }
}
