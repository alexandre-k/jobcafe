import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    id: ticketsOverview
    anchors.fill: parent
    property alias view: view
    property alias messages: messages
    property alias newMesssage: newMessage
    property alias sendArea: sendArea
    property alias changeTicketStatus: changeTicketStatus
    property string ticketTitle
    property string ticketOwner
    property string ticketStatus

    header: Rectangle {
        width: 100
        height: 120
        ColumnLayout {

        BackButton {
            Layout.leftMargin: 20
            Layout.topMargin: 20
        }

        Text {
            text: "Ticket"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 16
            }
            color: "#444f63"
            Layout.leftMargin: 30
            Layout.topMargin: 10
        }

        Text {
            text: ticketTitle
            font {
                family: "Montserrat"
                bold: true
                pointSize: 12
            }
            color: "#444f63"
            Layout.leftMargin: 10
            Layout.maximumWidth: 370
            fontSizeMode: Text.Fit
            wrapMode: Text.WordWrap
        }
        }
    }

    ListView {
        id: view
        anchors.fill: parent
        orientation: ListView.Vertical
        model: ListModel { id: messages }
        delegate: MessageElement { id: messageDelegate }
    }

    footer:
        ColumnLayout {

            TextArea {
                id: newMessage
                height: 50
                Layout.minimumWidth: 370
                Layout.minimumHeight: text.length + 20
                Layout.margins: 20
                wrapMode: Text.WordWrap
                textMargin: 10
                placeholderText: "Tap here to write..."
                background: Rectangle {
                    color: "#fff"
                    radius: 12
                    Image {
                        // Credit the author: <div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/"                 title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"                 title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
                        id: send
                        source: "forward.svg"
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 10
                        anchors.bottomMargin: 10
                        fillMode: Image.PreserveAspectFit
                        width: 25
                        height: 25
                        MouseArea {
                            id: sendArea
                            anchors.fill: parent
                        }
                    }
                }
            }

            Button {
                id: changeTicketStatus
                Layout.margins: 20
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.minimumWidth: 100
                Material.background: Material.Blue
                Material.foreground: "#ffffff"
                text: ticketStatus === "OPEN" ? qsTr("Close ticket") : qsTr("Re-open ticket")
            }
        }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
