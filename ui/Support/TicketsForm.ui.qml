import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: ticketsOverview

    property var tickets
    property alias openNewTicket: openNewTicket
    property alias view: view
    width: root.width
    height: root.height - headerHeight

    ListView {
        id: view
        anchors.fill: parent
        orientation: ListView.Vertical
        model: tickets
    }

    footer: RowLayout {
        width: root.width
        height: openNewTicket.implicitHeight + 30
        Button {
            id: openNewTicket
            text: "Open New Ticket"
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 250
            Layout.bottomMargin: 50
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font {
                family: "Titillium Web"
                pointSize: 16
                capitalization: Font.MixedCase
                underline: true
                bold: true
            }
        }
    }
}
