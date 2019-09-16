import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../BackButton"
import "../JTabButton"
import "../LoadingMessage"
import '../Utils.js' as Utils

Page {
    property int headerHeight: 230
    LoadingMessage {
        id: loadingMessage
        msg: "Loading tickets, be patient..."
    }
    Component.onCompleted: {
        loadingMessage.open();

        const updateTickets = (data) => {

            data.map((ticket, index) => {
                ticket.createdDate = Utils.formatDate(ticket.createdDate, false);
                if (ticket.open) {
                    openedTickets.tickets.append(ticket);
                } else {
                    closedTickets.tickets.append(ticket);
                }
            });
            loadingMessage.close();
        }
        Utils.request('GET', `/ticket?owner=` + root.state.user.email, undefined, updateTickets);
    }

    id: support

    header: Rectangle {
        color: "#eceff0"
        width: root.width
        height: headerHeight
        ColumnLayout {
            width: parent.width
            height: parent.height
            BackButton {
                id: backButton
                Layout.margins: 20
                MouseArea {
                    id: backButtonArea
                    anchors.fill: parent
                    onClicked: {
                        var lastOpenTicket = openTicketsView.pop();
                        var lastCloseTicket = closeTicketsView.pop();
                        if (lastOpenTicket === null && lastCloseTicket === null) {
                            stack.pop();
                        }
                    }
                }
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

        StackView {
            id: openTicketsView
            width: root.width
            height: root.height - headerHeight
            initialItem: openedTickets

            Tickets {
                id: openedTickets
                ticketsView: openTicketsView
            }
        }

        StackView {
            id: closeTicketsView
            width: root.width
            height: root.height - headerHeight
            initialItem: openedTickets

            Tickets {
                id: closedTickets
                ticketsView: closeTicketsView
            }
        }
    }
}
