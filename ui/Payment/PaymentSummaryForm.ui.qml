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
    property alias paymentPlan: paymentPlan
    property alias planExpirationDate: planExpirationDate
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
                    text: subscriptionPlan.label
                    font.pointSize: 14
                    color: "black"
                    Layout.topMargin: 0
                    Layout.bottomMargin: 5
                }

                PaymentText {
                    id: planExpirationDate
                    text: "Expiration date: " + paymentMethod.expirationDate
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
                    text: paymentMethod.firstname
                    Layout.fillWidth: true
                }

                PaymentText {
                    id: lastname
                    text: paymentMethod.lastname
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
                    text: paymentMethod.cardNumber
                }

                RowLayout {
                    PaymentText {
                        id: cardCvv
                        text: paymentMethod.cvv
                    }

                    PaymentText {
                        id: cardExpirationDate
                        text: paymentMethod.expirationDate
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
                    text: paymentMethod.address
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
                        text: paymentMethod.city
                    }

                    PaymentText {
                        id: addressState
                        text: paymentMethod.stateProvince
                    }
                }
                RowLayout {
                    PaymentText {
                        id: addressPostalCode
                        text: paymentMethod.postalCode
                    }
                    PaymentText {
                        id: addressCountry
                        text: paymentMethod.country
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
                text: "$" + subscriptionPlan.price
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
                text: "$" + subscriptionPlan.tax
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
                    text: "$" + subscriptionPlan.priceAllTaxIncluded
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
