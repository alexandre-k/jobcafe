import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    id: openTickets
    property alias submitTicket: submitTicket
    property alias uploadPicture: uploadPicture
    property alias message: message
    property alias ticketCategory: ticketCategory
    property alias uploadPictureDialog: uploadPictureDialog
    property alias confirmDialog: confirmDialog
    property alias ticketTitle: ticketTitle

    ColumnLayout {

        BackButton {
            Layout.margins: 20
        }

        Text {
            text: "Submit new ticket"
            font {
                family: "Titillium Web"
                pointSize: 14
                bold: true
            }
            color: "#032f3e"
            Layout.margins: 10
            Layout.leftMargin: 30
        }

        Rectangle {
            id: line
            height: 1
            width: 80
            color: "black"
            Layout.leftMargin: 50
        }

        //        Text {
        //            Layout.fillWidth: true
        //            fontSizeMode: Text.Fit
        //            wrapMode: Text.WordWrap
        //            textFormat: Text.RichText
        //            text: "<p>We highly encourage you to check our website <a>Help Centre</a> before you submit a new ticket.</p>"
        //        }
        ComboBox {
            id: ticketCategory
            Layout.minimumWidth: 370
            Layout.leftMargin: 20
            Layout.rightMargin: 20
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

        TextField {
            id: ticketTitle
            Layout.leftMargin: 20
            Layout.minimumWidth: 370
            placeholderText: "Title..."
        }

        TextArea {
            id: message
            height: 50
            Layout.minimumWidth: 370
            Layout.minimumHeight: 200
            Layout.margins: 20
            wrapMode: Text.WordWrap
            textMargin: 10
            placeholderText: "Tap here to write..."
            background: Rectangle {
                color: "#dfe2e8"
            }
        }

        Button {
            id: uploadPicture
            Layout.leftMargin: 20
            Layout.rightMargin: 20
            Layout.minimumWidth: 370
            text: qsTr("Upload photo...")
            FileDialog {
                id: uploadPictureDialog
                title: "Choose a picture"
                folder: shortcuts.home
            }
        }

        Button {
            id: submitTicket
            Layout.minimumWidth: 350
            Layout.leftMargin: 30
            text: qsTr("Submit ticket")
            Material.background: Material.Blue
            Material.foreground: "#ffffff"

            Dialog {
                id: confirmDialog
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




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
