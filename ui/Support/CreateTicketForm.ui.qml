import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3

ScrollView {
    id: openTickets
    width: root.width
    property alias submitTicket: submitTicket
    property alias uploadPicture: uploadPicture
    property alias message: message
    property alias ticketCategory: ticketCategory
    property alias goToHomePage: goToHomePage
    property alias confirmDialog: confirmDialog
    property alias ticketTitle: ticketTitle


    Popup {
        id: confirmDialog
        width: parent.width - (parent.width / 7)
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
            Layout.preferredWidth: root.width - (root.width / 10)
            Layout.margins: 20
            fontSizeMode: Text.Fit
            wrapMode: Text.WordWrap
            textFormat: Text.RichText
            text: "<p>We highly encourage you to check our website <a>Help Centre</a> before you submit a new ticket.</p>"
        }
        ComboBox {
            id: ticketCategory
            Layout.preferredWidth: root.width - (root.width / 10)
            Layout.leftMargin: 20
            Layout.rightMargin: 20
            model: []
            indicator: Image {
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.rightMargin: root.width / 20
                source: "down_arrow.svg"
                fillMode: Image.PreserveAspectFit
            }
            background: Rectangle {
                implicitWidth: 3 * root.width / 4
                implicitHeight: 50
                radius: 5
                color: "#dfe2e8"

                RowLayout {
                    Rectangle {
                        Layout.preferredWidth: 3 * root.width / 4
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
            implicitWidth: root.width - (root.width / 10)
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
            implicitWidth: root.width - (root.width / 10)
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
            Layout.preferredWidth: root.width - (root.width / 10)
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

        Rectangle {

            color: "#dfe2e8"
            Layout.preferredHeight: 70
            Layout.preferredWidth: root.width - (root.width / 10)
            Layout.leftMargin: 20
            radius: 15
            visible: root.supportPhotos.count > 0 ? true : false
            RowLayout {
                spacing: 10
                width: root.width - (root.width / 10)
                anchors.left: parent.left
                anchors.leftMargin: 40
                ListView {
                    id: listView
                    model: root.supportPhotos
                    clip: true
                    Layout.preferredWidth: root.width
                    Layout.preferredHeight: 50
                    spacing: 10
                    orientation: ListView.Horizontal
                    delegate:
                    Image {
                        source: path
                        fillMode: Image.PreserveAspectFit
                        width: 70
                        height: 70

                        Image {
                            source: "qrc:/ui/Profile/images/no.svg"
                            fillMode: Image.PreserveAspectFit
                            width: 20
                            height: 20
                            MouseArea {
                                anchors.fill: parent
                                onClicked: root.supportPhotos.remove(index)
                            }
                        }
                    }
                }
            }
        }

        Button {
            id: submitTicket
            text: qsTr("Submit ticket")
            Layout.alignment: Qt.AlignHCenter
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.preferredHeight: 70
            Layout.preferredWidth: root.width - (root.width / 8)
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.bottomMargin: 20
            font {
                family: "Roboto"
                pointSize: 16
                capitalization: Font.MixedCase
                bold: false
            }
        }
    }
}
