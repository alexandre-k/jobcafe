import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils
import "../LoadingMessage"

TicketsForm {

    property var ticketsView

    Component.onCompleted: {
        loadingMessage.open();

        const updateTickets = (data) => {
            console.log("DATA **********************")
            data.map((ticket, index) => {
                ticket.createdDate = Utils.formatDate(ticket.createdDate, false);
                             console.log("APPEND TICKET ", Object.keys(ticket))
                         console.log(" -> ", ticket.open, " ? ", isOpen)
                if (ticket.open === isOpen) {
                             console.log("APPEND TICKET ")
                    tickets.append(ticket);
                }
            });
            loadingMessage.close();
        }
        Utils.request('GET', `/ticket?owner=` + root.state.user.email, undefined, updateTickets);
    }

    view.delegate: TicketElement { ticketsViewStack: ticketsView }

//    openNewTicket.onClicked: {
//        ticketsView.push("qrc:/ui/Support/CreateTicket.qml")
//    }

    LoadingMessage {
        id: loadingMessage
        msg: "Loading tickets, be patient..."
    }
}
