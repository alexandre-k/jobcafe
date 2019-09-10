import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import "../BackButton"

Page {

    id: ticketsOverview
    anchors.fill: parent
    property alias view: view
    property alias messages: messages
    property alias newMessage: newMessage
    property alias sendArea: sendArea
    property alias changeTicketStatus: changeTicketStatus
    property alias reOpen: reOpen
    property string ticketTitle
    property string ticketOwner
    property bool isOpen

    header: Rectangle {}
    Rectangle {
        height: root.height - header.height - footer.height - 60
        width: root.width
        color: "transparent"

        ListView {
            id: view
            anchors.fill: parent
            anchors.leftMargin: 30
            anchors.rightMargin: 20
            anchors.bottom: footer.top
            anchors.bottomMargin: 180
            orientation: ListView.Vertical
            spacing: 30
            model: ListModel { id: messages }
            delegate: MessageElement { id: messageDelegate }
        }
    }

    footer:Rectangle {
        id: footer
        width: root.width
        height: isOpen ? 190 : 90
        color: "#eceff0"
        ColumnLayout {
            width: parent.width

            TextArea {
                id: newMessage
                visible: isOpen
                Layout.preferredWidth: root.width - 40
                Layout.preferredHeight: text.length + 60
                Layout.maximumHeight: 150
                Layout.margins: 20
                wrapMode: Text.WrapAnywhere
                topPadding: 20
                rightPadding: 20 + send.width
                leftPadding: 20
                bottomPadding: 20
                placeholderText: "Say something ..."
                background: Rectangle {
                    color: "#fff"
                    radius: 12

                    Image {
                        id: send
                        source: "add.svg"
                        anchors.top: parent.top
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 10
                        anchors.rightMargin: 15
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
                Layout.topMargin: 20
                Layout.bottomMargin: 20
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.preferredWidth: 100
                Layout.leftMargin: isOpen ? -50 : -100
                Material.foreground: Material.Blue
                contentItem: Item {
                    anchors.fill: parent
                    anchors.centerIn: parent
                    Text {
                        id: buttonText
                        text: isOpen ? qsTr("Close ticket") : qsTr("Re-open ticket")
                        color: "#3497fd"
                        font {
                            family: "Source Sans Pro"
                            underline: true
                            bold: true
                            pointSize: 18
                        }
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    Image {
                        id: reOpen
                        anchors.left: buttonText.right
                        anchors.bottom: buttonText.bottom
                        anchors.leftMargin: 10
                        width: 30
                        height: 30
                        source: "reopen.svg"
                        visible: !isOpen
                        fillMode: Image.PreserveAspectFit
                    }
                }
                background: Rectangle {
                    implicitHeight: buttonText.height
                    width: 200
                    color: "transparent"
                    MouseArea {
                        id: changeTicketStatus
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}
