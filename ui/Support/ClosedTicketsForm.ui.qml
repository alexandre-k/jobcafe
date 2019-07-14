import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: ticketsOverview

    ListView {
        id: view
        anchors.fill: parent
        orientation: ListView.Vertical
        delegate:
            ColumnLayout {
            spacing: 3
            Rectangle {
                id: summary
                height: 90
                width: view.width
                color: "#eceff0"
                border.color: "white"
                border.width: 2
                Label {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: -10
                    anchors.left: parent.left
                    anchors.leftMargin: 60
                    text: operator
                }

                Label {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: -10
                    anchors.right: summary.right
                    anchors.rightMargin: 10
                    text: lastUpdatedAt
                }

                Label {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 60
                    anchors.verticalCenterOffset: 15
                    text: lastMessageExcerpt
                }
            }
        }
        model: ListModel {
            ListElement {
                userName: "John Doe"
                operator: "David James"
                lastMessageExcerpt: "Lorem ipsum dolorsit amet..."
                lastUpdatedAt: "January 1st"
            }
            ListElement {
                userName: "Jane Doe"
                operator: "Joe Dalton"
                lastMessageExcerpt: "Lorem ipsum dolorsit amet..."
                lastUpdatedAt: "March 2nd"
            }
            ListElement {
                userName: "Isabella"
                operator: "Queen of England"
                lastMessageExcerpt: "Lorem ipsum dolorsit amet..."
                lastUpdatedAt: "June 28th"
            }
            ListElement {
                userName: "George Washington"
                operator: "David Beckham"
                lastMessageExcerpt: "Lorem ipsum dolorsit amet..."
                lastUpdatedAt: "Novermber 13th"
            }
        }

        footer:Button {
            anchors.centerIn: parent
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            text: qsTr("Open New Ticket")
        }

    }
}
