import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils


ClosedTicketsForm{

    Component.onCompleted: {

        const updateTickets = (data) => {
            data.map((ticket, index) => {
                ticket.createdDate = Utils.formatDate(ticket.createdDate);
                tickets.append(ticket);
            });

        }
        root.state.user.email = "john.doe@gmail.com"
        Utils.request('GET', `/ticket?owner=` + root.state.user.email, undefined, updateTickets);

    }
}
