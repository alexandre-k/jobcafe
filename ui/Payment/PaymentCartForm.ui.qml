import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    property alias checkout: checkout
    property alias removeFromCartArea: removeFromCartArea
    property alias price: price
    property alias planReview: planReview
    property var subscriptionPlan
    property alias cartItems: cartItems
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
                    pointSize: 18
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
                    id: cartItems
                    text: subscriptionPlan ? "Cart (1 item)" : "Cart empty"
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
                        id: planPrice
                        text: subscriptionPlan ? "A$" + subscriptionPlan.price : "A$0"
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
                        text: subscriptionPlan ? subscriptionPlan.label : "No plan found"
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
                            text: subscriptionPlan ? "A$" + subscriptionPlan.price : "A$0"
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
                        MouseArea {
                            id: removeFromCartArea
                            anchors.fill: parent
                        }
                    }
                }
            }
        }
    }
}
