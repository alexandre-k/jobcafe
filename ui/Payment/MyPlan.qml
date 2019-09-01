import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    id: myPlan
        Component.onCompleted: {
            plan = {
                label: "Premium",
                orderer: "k.m.alexandre@gmail.com",
                createdDate: "2019/10",
                deliveryEstimate: "2019/11",
                id: "RF 124-03",
                priceAllTaxIncluded: 12
            }
        }
    property var plan
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20

        RowLayout {
            Layout.leftMargin: 20
            Text {
                text: plan.label
                font {
                    family: "Quicksand"
                    pointSize: 24
                    bold: true
                }
                color: "#000"
            }

            Rectangle { width: 40; color: "transparent" }

            Text {
                text: "$" + plan.priceAllTaxIncluded
                font {
                    family: "Quicksand"
                    pointSize: 32
                    bold: true
                }
                color: "#333"
            }

            Text {
                text: "99"
                font {
                    family: "Quicksand"
                    pointSize: 12
                    bold: true
                }
                Layout.bottomMargin: 25
            }

            Rectangle {
                height: 30
                width: 2
                color: "black"
            }

            ColumnLayout {
                Text {
                    text: "PER"
                    font {
                        family: "Quicksand"
                        pointSize: 7
                    }
                    Layout.topMargin: -10
                    Layout.leftMargin: 10
                }

                Text {
                    text: "Annum"
                    font {
                        family: "Quicksand"
                        pointSize: 7
                    }
                    Layout.leftMargin: 10
                }
            }
        }

        RowLayout {
            Layout.leftMargin: 20

            Image {
                source: "completed.svg"
            }

            Rectangle { width: 10; color: "transparent" }

            Text {
                text: "GGGGGGGGGGG"
                font {
                    family: "Quicksand"
                    bold: true
                    pointSize: 18
                }
                color: "#000"
            }
        }

        RowLayout {
            Layout.leftMargin: 20
            Image {
                source: "completed.svg"
            }

            Rectangle { width: 10; color: "transparent" }

            Text {
                text: "GGGGGGGGGGG"
                font {
                    family: "Quicksand"
                    bold: true
                    pointSize: 18
                }
                color: "#000"
            }
        }

        RowLayout {
            Layout.leftMargin: 20
            Image {
                source: "completed.svg"
            }

            Rectangle { width: 10; color: "transparent" }

            Text {
                text: "GGGGGGGGGGGGG"
                font {
                    family: "Quicksand"
                    bold: true
                    pointSize: 18
                }
                color: "#000"
            }
        }

        Rectangle {
            width: root.width - 40
            height: 260
            color: "white"
            ColumnLayout {
                id: columnLayout
                width: parent.width - 20
                spacing: 0
                PaymentText {
                    text: "Payment Summary"
                    font {
                        family: "Arial"
                        bold: true
                        pointSize: 10
                    }
                    color: "#78849e"
                    Layout.bottomMargin: 0
                }

                PaymentText {
                    id: paymentPlan
                    text: plan.label
                    font.pointSize: 13
                    color: "black"
                    Layout.topMargin: -5
                    Layout.bottomMargin: 0
                }

                PaymentText {
                    id: paymentDate
                    text: "Payment date: " + plan.createdDate
                    Layout.topMargin: -5
                    Layout.bottomMargin: 0
                    Layout.leftMargin: 20
                    font {
                        family: "Arial"
                        bold: true
                        pointSize: 10
                    }
                    color: "#78849e"
                }

                PaymentText {
                    id: estimatedDeliveryDate
                    text: "Estimated delivery date: " + plan.deliveryEstimate
                    Layout.topMargin: -5
                    Layout.bottomMargin: 0
                    Layout.leftMargin: 20
                    font {
                        family: "Arial"
                        bold: true
                        pointSize: 10
                    }
                    color: "#78849e"
                }

                PaymentText {
                    id: paymentReference
                    text: "Reference No. " + plan.id
                    Layout.topMargin: -5
                    Layout.bottomMargin: 0
                    Layout.leftMargin: 20
                    font {
                        family: "Arial"
                        bold: true
                        pointSize: 10
                    }
                    color: "#78849e"
                }

                PaymentText {
                    id: paymentSum
                    text: "Payment: $" + plan.priceAllTaxIncluded
                    Layout.topMargin: -5
                    Layout.bottomMargin: 0
                    Layout.leftMargin: 20
                    font {
                        family: "Arial"
                        bold: true
                        pointSize: 11
                    }
                    color: "#78849e"
                }
            }
        }
        Button {
            id: processPayment
            text: "Upgrade my plan"
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.fillWidth: true
            Layout.preferredHeight: 70
            Layout.leftMargin: 30
            Layout.rightMargin: 30
            font {
                family: "Roboto"
                pointSize: 14
                capitalization: Font.MixedCase
                bold: false
                underline: true
            }
        }
    }
}
