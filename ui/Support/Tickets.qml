import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3


TicketsForm {

    property var ticketsView

    view.delegate: TicketElement { ticketsViewStack: ticketsView }

    openNewTicket.onClicked: {
        ticketsView.push("qrc:/ui/Support/CreateTicket.qml")
    }

}
