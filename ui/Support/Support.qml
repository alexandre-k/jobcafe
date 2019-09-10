import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../BackButton"
import "../JTabButton"

Page {
    Component.onCompleted: {
            root.state.user = {
              "email": "john.doe@gmail.com",
              "fullName": "John Doe",
              "firstName": "John",
              "lastName": "Doe",
              "password": "toto",
              "phone": "080-1111-2222",
              "profession": {
                "label": "Accountant"
              },
              "membership": {
                "label": "Basic Plan",
                "price": 3.99,
                "tax": 8.2
              },
              "isNewMessageNotified": true,
              "isNewServiceAdvertised": true,
              "subscribed": true,
              "createdDate": "2019-08-12T10:39:28.565+0000",
              "updatedDate": "2019-08-12T10:39:28.565+0000",
              "isStaff": false,
              "profilePicture": "http://localhost:8080/profile_picture.png"
            }
        }

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
//        anchors.fill: parent
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 15

        StackView {
            id: openTicketsView
            implicitHeight: parent.height
            implicitWidth: parent.width
            initialItem: openedTickets

            Tickets {
                id: openedTickets
                isOpen: false
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
