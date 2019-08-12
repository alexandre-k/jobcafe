import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    id: support
//    anchors.fill: parent

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

            TabButton {
                text: qsTr("Open tickets")
                font: {
                    family: "Europa"
                    bold: true
                }
            }

            TabButton {
                text: qsTr("Closed tickets")
                font: {
                    family: "Europa"
                    bold: true
                }
            }
        }
    }

    SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
//        anchors.fill: parent

        OpenTickets {}

        ClosedTickets {}
    }
}
