import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    property alias checkout: checkout
    anchors.fill: parent
    ColumnLayout {
        spacing: 5
        BackButton {
            id: backButton
            Layout.margins: 20
        }
        RowLayout {
            Text {
                text: "Payment plan"
                font {
                    family: "Montserrat"
                    bold: true
                    pointSize: 22
                }
                color: "#444f63"
                Layout.margins: 10
                Layout.leftMargin: 30
                Layout.fillWidth: true
            }

            Image {
                source: "cart.svg"
                Layout.margins: 10
                Layout.rightMargin: 20
            }
        }

        Rectangle {
            Layout.minimumWidth: 380
            Layout.minimumHeight: 210
            Layout.margins: 15

            ColumnLayout {

                spacing: 5

                Text {
                    text: "Cart (1 item)"
                    font {
                        family: "Titillium Web"
                        bold: true
                        underline: true
                    }
                    color: "#032f3e"
                    Layout.margins: 10
                }
                RowLayout {

                    Text {
                        text: "Total"
                        font {
                            family: "Titillium Web"
                            bold: true
                            underline: true
                        }
                        color: "#032f3e"
                        Layout.margins: 10
                        Layout.alignment: Qt.AlignLeft
                        Layout.minimumWidth: 270
                        Layout.fillWidth: true
                    }

                    Text {
                        text: "A$99.99"
                        font {
                            family: "Titillium Web"
                            bold: true
                            underline: true
                        }
                        color: "#032f3e"
                        Layout.margins: 10
                        Layout.alignment: Qt.AlignRight
                    }
                }

                Button {
                    id: checkout
                    Material.background: Material.Blue
                    text: "Process to Checkout"
                    contentItem: Text {
                        text: checkout.text
                        font {
                            family: "Titillium Web"
                            bold: true
                            underline: true
                        }
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                    height: 70
                    Layout.fillWidth: true
                    Layout.margins: 10
                    Layout.leftMargin: 50
                    Layout.rightMargin: 50
                }

                Rectangle {
                    id: line
                    height: 1
                    width: 300
                    color: "black"
                    Layout.fillWidth: true
                    Layout.leftMargin: 20
                    Layout.rightMargin: 20
                }

                RowLayout {
                    Text {
                        id: planReview
                        text: "Premium Plan jjjjjj"
                        font {
                            underline: true
                        }
                        Layout.margins: 10
                        Layout.leftMargin: 20
                        Layout.fillWidth: true
                    }

                    Rectangle {
                        width: 90
                        height: 20
                        radius: 5
                        Text {
                            id: price
                            text: "A$99.99"
                            color: "#fff"
                            anchors.centerIn: parent
                        }
                        color: "#286398"
                    }

                    Text {
                        id: removeFromCart
                        text: "Remove"
                        font {
                            family: "Titillium Web"
                            underline: true
                        }
                        color: "#2699fb"
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
