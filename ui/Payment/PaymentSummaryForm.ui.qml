import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    id: myPlan
    property alias firstname: firstname
    property alias lastname: lastname
    property alias creditCardNumber: creditCardNumber
    property alias cardCvv: cardCvv
    property alias cardExpirationDate: cardExpirationDate
    property alias addressStreet: addressStreet
    property alias addressCity: addressCity
    property alias addressState: addressState
    property alias addressPostalCode: addressPostalCode
    property alias addressCountry: addressCountry
    property alias priceWithoutTax: priceWithoutTax
    property alias tax: tax
    property alias priceWithTax: priceWithTax
    property alias processPayment: processPayment
    anchors.fill: parent

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        BackButton {
            Layout.margins: 10
        }

        Text {
            text: "Payment Summary"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 18
            }
            color: "#444f63"
            Layout.leftMargin: 10
        }

        Rectangle {
            width: 380
            height: 100
            color: "white"
            Layout.leftMargin: 10

            ColumnLayout {

                PaymentText {
                    text: "Products"
                    Layout.bottomMargin: 5
                }

                PaymentText {
                    id: paymentPlan
                    text: "Premium Plan Jjjjjjj"
                    font.pointSize: 14
                    color: "black"
                    Layout.topMargin: 0
                    Layout.bottomMargin: 5
                }

                PaymentText {
                    id: planExpirationDate
                    text: "Expiration date: 11/11/2019"
                    Layout.topMargin: 0
                    Layout.bottomMargin: 5
                }
            }
        }

        Rectangle {
            width: 380
            height: 50
            color: "white"
            Layout.leftMargin: 10
            RowLayout {
                PaymentText {
                    id: firstname
                    text: "John"
                    Layout.fillWidth: true
                }

                PaymentText {
                    id: lastname
                    text: "Doe"
                    Layout.alignment: Qt.AlignRight
                }
            }
        }

        Rectangle {
            width: 380
            height: 100
            color: "white"
            Layout.leftMargin: 10
            ColumnLayout {

                PaymentText {
                    id: creditCardNumber
                    text: "4695********6843"
                }

                RowLayout {
                    PaymentText {
                        id: cardCvv
                        text: "***"
                    }

                    PaymentText {
                        id: cardExpirationDate
                        text: "25/03/2021"
                    }
                }
            }
        }

        Rectangle {
            width: 380
            height: 50
            color: "white"
            Layout.leftMargin: 10
            RowLayout {
                PaymentText {
                    id: addressStreet
                    text: "25 John St"
                }
            }
        }

        Rectangle {
            width: 380
            height: 100
            Layout.leftMargin: 10
            ColumnLayout {
                RowLayout {
                    PaymentText {
                        id: addressCity
                        text: "Sidney"
                    }

                    PaymentText {
                        id: addressState
                        text: "NSW"
                    }
                }
                RowLayout {
                    PaymentText {
                        id: addressPostalCode
                        text: "6000"
                    }
                    PaymentText {
                        id: addressCountry
                        text: "Australia"
                    }
                }
            }
        }

        RowLayout {

            Text {
                text: "Subtotal"
                Layout.fillWidth: true
                Layout.margins: 5
                Layout.leftMargin: 50
            }

            Text {
                id: priceWithoutTax
                text: "$70.99"
                Layout.margins: 5
                Layout.rightMargin: 50
                Layout.alignment: Qt.AlignRight
            }
        }

        RowLayout {
            Text {
                text: "Gst"
                Layout.fillWidth: true
                Layout.margins: 5
                Layout.leftMargin: 50
            }

            Text {
                id: tax
                text: "$9.00"
                Layout.margins: 5
                Layout.rightMargin: 50
                Layout.alignment: Qt.AlignRight
            }
        }

            Rectangle {
                id: line
                height: 1
                width: 380
                color: "#78849e"
                Layout.margins: 10
            }

            RowLayout {
                Text {
                    text: "Total"
                    Layout.fillWidth: true
                    Layout.margins: 5
                    Layout.leftMargin: 50
                }

                Text {
                    id: priceWithTax
                    text: "$79.99"
                    Layout.margins: 5
                    Layout.rightMargin: 50
                    Layout.alignment: Qt.AlignRight
                }
            }

            Button {
                id: processPayment
                text: "Process Payment"
                Material.background: Material.Blue
                Material.foreground: "#ffffff"
                Layout.fillWidth: true
                Layout.rightMargin: 50
                Layout.leftMargin: 50
            }
        }
    }
