import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: openTickets

    property alias ticketCategory: ticketCategory

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20

        Text {
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
            wrapMode: Text.WordWrap
            textFormat: Text.RichText
            text: "<h2>Submit new ticket</h2>
<p>We highly encourage you to check our website <a>Help Centre</a> before you submit a new ticket.</p>"
        }

        ComboBox {
            id: ticketCategory

            Layout.fillWidth: true
            model: []
            Image {
                source: "down_arrow.svg"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.leftMargin: 5
                fillMode: Image.PreserveAspectFit
            }
        }

        TextArea {
            height: 50
            Layout.fillWidth: true
            Layout.minimumHeight: 200
            wrapMode: Text.WordWrap
            textFormat: Text.RichText
            textMargin: 10
            placeholderText: "Tap here to write..."
            background: Rectangle {
                color: "#dfe2e8"
            }
        }

        Button {
            Layout.fillWidth: true
            text: qsTr("Upload photo...")
            onClicked: uploadPictureDialog.open()
            Dialog {
                id: uploadPictureDialog
                anchors.centerIn: parent
                modal: true
                title: "Upload Picture"
                DialogButtonBox {

                    Button {
                        text: qsTr("Take a new photo")
                    }

                    Button {
                        text: qsTr("Choose existing photo")
                    }
                }
                footer: Button {
                    text: qsTr("Cancel")
                    onClicked: uploadPictureDialog.close()
                }
            }
        }

        Button {
            id: submitTicket
            Layout.fillWidth: true
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            text: qsTr("Submit ticket")
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            onClicked: confirmDialog.open()
            Dialog {
                id: confirmDialog
                anchors.centerIn: openTickets
                modal: true
                title: "Submitted"
                Column {
                    Text {
                        text: "Your support ticket has been successfully submitted."
                    }
                    Button {
                        text: "Home page"
                        Material.background: Material.Blue
                        Material.foreground: "#ffffff"
                    }
                }
            }
        }
    }
}
