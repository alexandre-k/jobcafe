import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3
import "../BackButton"

ScrollView {
    id: openTickets
    width: root.width
    property alias submitTicket: submitTicket
    property alias uploadPicture: uploadPicture
    property alias message: message
    property alias ticketCategory: ticketCategory
    property alias goToHomePage: goToHomePage
    // property alias uploadPictureDialog: uploadPictureDialog
    property alias confirmDialog: confirmDialog
    property alias ticketTitle: ticketTitle


    Popup {
        id: confirmDialog
        width: root.width - 60
        height: 230
        modal: true
        x: Math.round((parent.width - width) / 2)
        y: Math.round((parent.height + height) / 3)
        parent: Overlay.overlay
        padding: 0
        topInset: 50
        bottomInset: 100
        contentItem: Rectangle {
            radius: 10
            color: "black"

            ColumnLayout {
                width: parent.width
                spacing: 10


                Text {
                    font {
                        family: "Gibson"
                        pointSize: 24
                        bold: true
                    }
                    color: "#fff"
                    Layout.topMargin: 20
                    Layout.leftMargin: 30
                    text: "Submitted"
                }

                Text {
                    text: "Your support ticket has been successfully submitted."
                    font {
                        family: "Gibson"
                        pointSize: 14
                    }
                    color: "#fff"
                    Layout.leftMargin: 30
                    Layout.rightMargin: 4
                    wrapMode: Text.WordWrap
                    fontSizeMode: Text.Fit
                    Layout.maximumWidth: root.width
                    Layout.fillWidth: true
                }

                Button {
                    id: goToHomePage
                    text: qsTr("Home page")
                    Layout.alignment: Qt.AlignHCenter
                    Material.background: Material.Blue
                    Material.foreground: "#ffffff"
                    Layout.fillWidth: true
                    Layout.preferredHeight: 70
                    Layout.topMargin: 20
                    Layout.leftMargin: 50
                    Layout.rightMargin: 50
                    background: Rectangle {
                        radius: 5
                        color: "#2699fb"
                    }

                    font {
                        family: "Roboto"
                        pointSize: 11
                        capitalization: Font.MixedCase
                        bold: false
                    }
                }
            }
        }
    }
    ColumnLayout {
        width: parent.width - 20

        Text {
            text: "Submit new ticket"
            font {
                family: "Titillium Web"
                pointSize: 19
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

        Text {
            font {
                family: "Titillium Web"
                pointSize: 16
            }
            color: "#032f3e"
            Layout.preferredWidth: root.width - 40
            Layout.margins: 20
            fontSizeMode: Text.Fit
            wrapMode: Text.WordWrap
            textFormat: Text.RichText
            text: "<p>We highly encourage you to check our website <a>Help Centre</a> before you submit a new ticket.</p>"
        }
        ComboBox {
            id: ticketCategory
            Layout.minimumWidth: 370
            Layout.leftMargin: 20
            Layout.rightMargin: 20
            model: ["Tutorials and Guides", "Something else"]
            indicator: Image {
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.rightMargin: 20
                source: "down_arrow.svg"
                fillMode: Image.PreserveAspectFit
            }
            background: Rectangle {
                implicitWidth: root.width - 100
                implicitHeight: 50
                radius: 5
                color: "#dfe2e8"

                RowLayout {
                    Rectangle {
                        Layout.preferredWidth: root.width - 100
                        Layout.fillWidth: true
                        color: "transparent"
                    }

                    Rectangle {
                        height: 40
                        width: 1.5
                        color: "black"
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                        Layout.margins: 5
                    }
                }
            }
        }

        TextField {
            id: ticketTitle
            Layout.margins: 20
            Layout.topMargin: 10
            Layout.bottomMargin: 10
            implicitWidth: root.width - 40
            implicitHeight: 55
            leftPadding: 10
            Text {
                text:"Title..."
                visible: !ticketTitle.text && !ticketTitle.activeFocus
                color: "#808080"
                font {
                    family: "Titillium Web"
                    pointSize: 16
                }
                anchors.top: ticketTitle.top
                anchors.left: ticketTitle.left
                anchors.margins: 10
            }
            background: Rectangle {
                radius: 5
                color: "#dfe2e8"
            }
        }

        TextArea {
            id: message
            height: 50
            implicitWidth: root.width - 40
            implicitHeight: 200
            Layout.margins: 20
            Layout.topMargin: 10
            Layout.bottomMargin: 10
            wrapMode: Text.WordWrap
            textMargin: 10
            Text {
                text:"Tap here to write..."
                visible: !message.text && !message.activeFocus
                color: "#808080"
                font {
                    family: "Titillium Web"
                    pointSize: 16
                }
                anchors.top: message.top
                anchors.left: message.left
                anchors.margins: 10
            }
            background: Rectangle {
                color: "#dfe2e8"
            }
        }

        Button {
            id: uploadPicture
            Layout.margins: 20
            Layout.topMargin: 10
            Layout.bottomMargin: 10
            Layout.preferredWidth: root.width - 40
            contentItem: Text {
                text: "Upload photo..."
                font {
                    family: "Titillium Web"
                    pointSize: 16
                }
                color: "#000"
                verticalAlignment: Qt.AlignVCenter
            }

            background: Rectangle {
                color: "#dfe2e8"
                radius: 5
                implicitHeight: 50
            }
            indicator: Image {
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.rightMargin: 20
                source: "upload.svg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Button {
            id: submitTicket
            text: qsTr("Submit ticket")
            Layout.alignment: Qt.AlignHCenter
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.preferredHeight: 70
            Layout.preferredWidth: root.width - 50
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            font {
                family: "Roboto"
                pointSize: 16
                capitalization: Font.MixedCase
                bold: false
            }
        }
    }
}
