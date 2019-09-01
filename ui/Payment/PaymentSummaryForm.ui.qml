import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

ScrollView {
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
    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 20

        BackButton {
            Layout.margins: 10
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

        Text {
            text: "Summary"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 22
            }
            color: "#444f63"
            Layout.margins: 10
            Layout.leftMargin: 10
            Layout.bottomMargin: 30
            Layout.fillWidth: true
        }

        ColumnLayout {
            spacing: 20

            Timeline { productsCompleted: true; paymentDetailsCompleted: true }

            Rectangle { height: 25; color: "transparent" }

            Rectangle {
                width: root.width - 40
                height: 140
                color: "white"

                ColumnLayout {
                    width: parent.width

                    RowLayout {
                        PaymentText {
                            fieldText: "Products"
                            color: "#78849e"
                            font.pointSize: 11
                            readOnly: true
                        }
                        Image {
                            source: "edit.svg"
                            Layout.rightMargin: 30
                            MouseArea {
                                id: planClickableArea
                                anchors.fill: parent
                            }
                        }
                    }

                    PaymentText {
                        id: paymentPlan
                        fieldText: subscriptionPlan.label
                        color: "#444f63"
                        font.pointSize: 14
                        font.bold: true
                        Layout.topMargin: -10
                        readOnly: true
                    }

                    PaymentText {
                        id: planExpirationDate
                        fieldText: "Expiration date: " + paymentMethod.expirationDate
                        color: "#78849e"
                        Layout.topMargin: -10
                        readOnly: true
                    }
                }
            }

            Rectangle {
                width: root.width - 40
                height: 60
                color: "white"

                RowLayout {
                    width: parent.width

                    PaymentText {
                        id: firstname
                        fieldText: paymentMethod.firstname
                        readOnly: true
                    }

                    Rectangle {
                        height: 30;
                        width: 1;
                        color: "#f2f2f2"
                        Layout.topMargin: 10
                    }

                    PaymentText {
                        id: lastname
                        fieldText: paymentMethod.lastname
                        readOnly: true
                    }

                    Image {
                        source: "edit.svg"
                        Layout.leftMargin: -50
                        Layout.rightMargin: 30
                        MouseArea {
                            id: nameClickableArea
                            anchors.fill: parent
                        }
                    }
                }
            }

            Rectangle {
                width: root.width - 40
                height: 120
                color: "white"

                ColumnLayout {
                    width: parent.width

                    RowLayout {
                        PaymentText {
                            id: creditCardNumber
                            fieldText: paymentMethod.cardNumber
                            readOnly: true
                        }
                        Image {
                            source: "edit.svg"
                            Layout.rightMargin: 30
                            MouseArea {
                                id: cardClickableArea
                                anchors.fill: parent
                            }
                        }
                    }

                    RowLayout {
                        width: parent.width
                        PaymentText {
                            id: cardCvv
                            fieldText: paymentMethod.cvv
                            readOnly: true
                        }

                        Rectangle {
                            height: 30;
                            width: 1;
                            color: "#f2f2f2"
                            Layout.topMargin: 10
                        }

                        PaymentText {
                            id: cardExpirationDate
                            fieldText: paymentMethod.expirationDate
                            readOnly: true
                        }
                    }
                }
            }

            Rectangle {
                width: root.width - 40
                height: 60
                color: "white"
                RowLayout {
                    width: parent.width
                    PaymentText {
                        id: addressStreet
                        fieldText: paymentMethod.address
                        readOnly: true
                    }

                    Image {
                        source: "edit.svg"
                        Layout.rightMargin: 30
                        MouseArea {
                            id: addressClickableArea
                            anchors.fill: parent
                        }
                    }
                }
            }

            Rectangle {
                width: root.width - 40
                height: 130
                color: "white"
                ColumnLayout {
                    width: parent.width
                    spacing: 0
                    RowLayout {
                        width: parent.width
                        Layout.topMargin: -10
                        PaymentText {
                            id: addressCity
                            fieldText: paymentMethod.city
                            readOnly: true
                        }

                        Rectangle {
                            height: 60;
                            width: 1;
                            color: "#f2f2f2"
                            Layout.topMargin: 10
                        }

                        PaymentText {
                            id: addressState
                            fieldText: paymentMethod.stateProvince
                            readOnly: true
                        }
                    }
                    RowLayout {
                        width: parent.width
                        Layout.topMargin: -10
                        PaymentText {
                            id: addressPostalCode
                            fieldText: paymentMethod.postalCode
                            readOnly: true
                        }

                        Rectangle {
                            height: 60;
                            width: 1;
                            color: "#f2f2f2"
                            Layout.topMargin: 10
                        }

                        PaymentText {
                            id: addressCountry
                            fieldText: paymentMethod.country
                            readOnly: true
                        }
                    }
                }
            }

            RowLayout {
                width: parent.width

                Text {
                    text: "Summary"
                    font {
                        capitalization: Font.AllUppercase
                        letterSpacing: 1
                        family: "Arial"
                        pointSize: 13
                    }
                }

                Text {
                    text: "Subtotal"
                    Layout.fillWidth: true
                    Layout.leftMargin: 45
                    font {
                        capitalization: Font.AllUppercase
                        letterSpacing: 1
                        family: "Arial"
                        pointSize: 13
                    }
                    color: "black"
                }

                Text {
                    id: priceWithoutTax
                    text: "$" + subscriptionPlan.price
                    font {
                        family: "Arial"
                        pointSize: 13
                    }
                    color: "black"
                    Layout.rightMargin: 10
                    Layout.alignment: Qt.AlignRight
                }
            }

            RowLayout {
                Layout.topMargin: -20
                Layout.bottomMargin: -20
                Rectangle { width: 90 }
                Text {
                    text: "Gst"
                    Layout.fillWidth: true
                    Layout.margins: 5
                    Layout.leftMargin: 50
                    font {
                        capitalization: Font.AllUppercase
                        letterSpacing: 1
                        family: "Arial"
                        pointSize: 13
                    }
                    color: "black"
                }

                Text {
                    id: tax
                    text: "$" + subscriptionPlan.tax
                    Layout.margins: 5
                    Layout.rightMargin: 10
                    Layout.alignment: Qt.AlignRight
                    font {
                        family: "Arial"
                        pointSize: 13
                    }
                    color: "black"
                }
            }

            Rectangle {
                width: root.width - 40
                height: 10
                color: "transparent"
                RowLayout {
                    Rectangle { width: 125 }

                    Rectangle {
                        id: line
                        height: 1
                        width: 225
                        color: "#78849e"
                        Layout.margins: 10
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignRight
                    }
                }
            }

            RowLayout {
                width: parent.width
                Rectangle { width: 90 }
                Text {
                    text: "Total"
                    Layout.fillWidth: true
                    Layout.margins: 5
                    Layout.leftMargin: 50
                    font {
                        capitalization: Font.AllUppercase
                        letterSpacing: 1
                        family: "Arial"
                        pointSize: 13
                    }
                    color: "black"
                }

                Text {
                    id: priceWithTax
                    text: "$" + subscriptionPlan.priceAllTaxIncluded
                    Layout.margins: 10
                    Layout.alignment: Qt.AlignRight
                    font {
                        family: "Arial"
                        pointSize: 13
                    }
                    color: "black"
                }
            }

            Button {
                id: processPayment
                text: "Process payment"
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
                }
            }
        }
    }
}
