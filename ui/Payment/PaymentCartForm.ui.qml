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

        BackButton {}

        RowLayout {
            Text {
                text: "Payment plan"
                font {
                    family: "Montserrat"
                    bold: true
                    pointSize: 24
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
            Layout.minimumWidth: 9 * root.width / 10
            Layout.minimumHeight: 2 * root.width / 3
            Layout.margins: 15
            radius: 10

            Rectangle {
                width: 20; height: 20
                anchors.right: parent.right
                anchors.rightMargin: 25
                transform: Rotation { origin.x: 25; origin.y: 25; angle: 45}
            }

            ColumnLayout {

                spacing: 5

                Rectangle {
                    height: 20
                }

                Text {
                    id: cartItems
                    text: subscriptionPlan ? "Cart (1 item)" : "Cart empty"
                    font {
                        family: "Titillium Web"
                        bold: true
                        underline: true
                        pointSize: 13
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
                            pointSize: 13
                        }
                        color: "#032f3e"
                        Layout.margins: 10
                        Layout.alignment: Qt.AlignLeft
                        Layout.preferredWidth: 2 * root.width / 3
                        Layout.fillWidth: true
                    }

                    Text {
                        id: planPrice
                        text: subscriptionPlan ? "A$" + subscriptionPlan.price : "A$0"
                        font {
                            family: "Titillium Web"
                            bold: true
                            pointSize: 16
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
                            pointSize: 14
                        }
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                    implicitHeight: 65
                    Layout.fillWidth: true
                    Layout.margins: 10
                    Layout.leftMargin: 50
                    Layout.rightMargin: 50
                }

                Rectangle {
                    id: line
                    height: 1
                    width: 3 * root.width / 4
                    color: "black"
                    Layout.fillWidth: true
                    Layout.leftMargin: 20
                    Layout.rightMargin: 20
                }

                RowLayout {
                    Text {
                        id: planReview
                        text: subscriptionPlan ? subscriptionPlan.label + " Plan Jjjjjjjj" : "No plan found"
                        font {
                            family: "Titillium Web"
                            underline: true
                            bold: true
                            pointSize: 11
                        }
                        Layout.margins: 10
                        Layout.leftMargin: 20
                        Layout.fillWidth: true
                    }

                    Rectangle {
                        width: 90
                        height: 20
                        radius: 5
                        gradient: Gradient {
                            GradientStop { position: 0.0; color: "#3B85C8" }
                            GradientStop { position: 1.0; color: "#286398" }
                        }

                        Text {
                            id: price
                            text: subscriptionPlan ? "A$" + subscriptionPlan.price : "A$0"
                            color: "#fff"
                            anchors.centerIn: parent
                            font {
                                family: "Titillium Web"
                                pointSize: 11
                                bold: true
                            }
                        }
                        color: "#286398"
                    }

                    Text {
                        id: removeFromCart
                        text: "Remove"
                        font {
                            family: "Titillium Web"
                            underline: true
                            pointSize: 14
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
