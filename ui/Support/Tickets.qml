import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils

TicketsForm{

    Component.onCompleted: {
        console.log("STATE ", root.state.user.email)

        const updateTickets = (data) => {
            data.map((ticket, index) => {
                ticket.createdDate = Utils.formatDate(ticket.createdDate);

                if (ticket.status === status) {
                    tickets.append(ticket);
                }
            });

        }
        Utils.request('GET', `/ticket?owner=` + root.state.user.email, undefined, updateTickets);

    }

    openNewTicket.onClicked: {
        stack.push("qrc:/ui/Support/OpenTicket.qml")
    }
}
