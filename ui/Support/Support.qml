import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../BackButton"
import "../JTabButton"

Page {
    id: support

    header: ColumnLayout {
        BackButton {
            Layout.margins: 20
        }

        Text {
            id: aboutTitle
            width: parent.width
            text: qsTr("Support")
            color: "#444f63"
            font {
                pointSize: 16
                bold: true
                family: "Montserrat"
            }
            Layout.margins: 10
        }

        TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            Layout.minimumWidth: 380

            JTabButton {
                textContent: qsTr("Open tickets")
            }

            JTabButton {
                textContent: qsTr("Closed tickets")
            }
        }
    }

    SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
        anchors.fill: parent
        Tickets {

            id: openedTickets
            status: "OPEN"
        }


        Tickets {

            id: closedTickets
            status: "CLOSED"
        }

    }
}
