import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: ticketsOverview

    property alias tickets: tickets
    property alias openNewTicket: openNewTicket
    property string status

    ListView {
        id: view
        anchors.fill: parent
        orientation: ListView.Vertical
        delegate: TicketElement {}

        model: ListModel { id: tickets }
    }

    footer:
        RowLayout {
            Button {
                id: openNewTicket
                Layout.leftMargin: 150
                Material.background: Material.Blue
                Material.foreground: "#ffffff"
                text: qsTr("Open New Ticket")
            }
        }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/