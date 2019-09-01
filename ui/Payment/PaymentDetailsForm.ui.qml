import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import "../BackButton"


ScrollView {
    id: paymentInfo
    property alias creditCardIssuer: creditCardIssuer
    property alias firstname: firstname
    property alias lastname: lastname
    property alias cardNumber: cardNumber
    property alias cvv: cvv
    property alias expirationDate: expirationDate
    property alias city: city
    property alias stateProvince: stateProvince
    property alias postalCode: postalCode
    property alias country: country
    property alias placeOrder: placeOrder
    property alias address: address
    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 20

        BackButton {}

        Text {
            text: "Payment plan"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 16
            }
            color: "#444f63"
            Layout.margins: 10
            Layout.leftMargin: 40
            Layout.fillWidth: true
        }

        Text {
            text: "Payment details"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 22
            }
            color: "#444f63"
            Layout.margins: 10
            Layout.leftMargin: 10
            Layout.fillWidth: true
        }

        ColumnLayout {
            spacing: 20

            Timeline { productsCompleted: true }

            Rectangle { height: 25; color: "transparent" }

            ComboBox {
                id: creditCardIssuer
                Layout.preferredWidth: root.width - 40
                Layout.preferredHeight: 70
                model: ["VISA", "MasterCard"]
                background: Rectangle {
                    color: "white"
    //                border { color: "lightBlue" }

                }
                layer.enabled: true
                layer.effect: InnerShadow {
                    color: "lightBlue"
                    samples: 20
                    radius: 8.5
                    spread: 0.1
                }
            }

            Rectangle {
                width: root.width - 40
                height: 70
                color: "white"
                RowLayout {

                    width: parent.width
                    PaymentText {
                        id: firstname
                        fieldText: "Firstname"
                    }

                    Rectangle {
                        height: 40;
                        width: 1;
                        color: "#f2f2f2"
                        Layout.topMargin: 10
                    }

                    PaymentText {
                        id: lastname
                        fieldText: "Lastname"
                    }
                }
            }

            Rectangle {
                id: cardInfo
                width: root.width - 40
                height: 125
                color: "white"
                ColumnLayout {
                    width: parent.width
                    PaymentText {
                        id: cardNumber
                        fieldText: "Card Number"
                        inputMethodHints: Qt.ImhDIgitsOnly
                        maximumLength: 16
                    }

                    RowLayout {
                        width: parent.width

                        PaymentText {
                            id: cvv
                            placeholderText: "CVV"
                            inputMethodHints: Qt.ImhDIgitsOnly
                            maximumLength: 3
                        }

                        Rectangle {
                            height: 40;
                            width: 1;
                            color: "#f2f2f2"
                            Layout.topMargin: 10
                        }

                        PaymentText {
                            id: expirationDate
                            placeholderText: "Exp. Date"
                            inputMethodHints: Qt.ImhDIgitsOnly
                            maximumLength: 6
                        }
                    }
                }
            }

            Rectangle {
                width: root.width - 40
                height: 60
                color: "white"

                ColumnLayout {
                    width: parent.width

                    PaymentText {
                        id: address
                        fieldText: "Address"
                    }
                }
            }

            Rectangle {
                width: root.width - 40
                height: 130
                color: "white"
                ColumnLayout {
                    width: parent.width
                    RowLayout {
                        width: parent.width

                        PaymentText {
                            id: city
                            fieldText: "City"
                        }

                        Rectangle {
                            height: 40;
                            width: 1;
                            color: "#f2f2f2"
                            Layout.topMargin: 10
                        }

                        PaymentText {
                            id: stateProvince
                            fieldText: "State"
                        }
                    }

                    RowLayout {

                        PaymentText {
                            id: postalCode
                            fieldText: "Postal Code"
                        }

                        Rectangle {
                            height: 40;
                            width: 1;
                            color: "#f2f2f2"
                            Layout.topMargin: 10
                        }

                        PaymentText {
                            id: country
                            fieldText: "Country"
                        }
                    }
                }
            }
        }

        Button {
            id: placeOrder
            text: qsTr("Place order")
            Layout.alignment: Qt.AlignHCenter
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.fillWidth: true
            Layout.preferredHeight: 70
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
