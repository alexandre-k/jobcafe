import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import "../BackButton"

ColumnLayout {
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
    anchors.fill: parent
    anchors.margins: 20

    BackButton {
    }

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

        Rectangle {
            height: 2
            color: "lightGray"
            width: root.width - 80
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            property string completeColor: "#00b123"
            property string incompleteColor: "#fff"
            property bool productsCompleted: false


            RowLayout {
                id: products

                ColumnLayout {

                    Rectangle {
                        color: productsCompleted ? "#00b123" : "#fff"
                        height: 20
                        width: 20
                        radius: 50
                        border { color: productsCompleted ? "transparent" : "black" }
                        Layout.alignment: Qt.AlignTop
                        Layout.topMargin: -10
                    }

                    Text {
                        color: productsCompleted ? "#00b123" : "#2699fb"
                        text: "Products"
                        Layout.alignment: Qt.AlignLeft
                        Layout.leftMargin: -10
                    }
                }

                Rectangle { width: 50; color: "transparent" }

                ColumnLayout {
                    id: paymentDetails
                    property bool paymentDetailsCompleted: false

                    Rectangle {
                        color: paymentDetailsCompleted ? "#00b123" : "#fff"
                        height: 20
                        width: 20
                        radius: 50
                        border { color: paymentDetailsCompleted ? "transparent" : "black" }
                        Layout.alignment: Qt.AlignTop
                        Layout.topMargin: -10
                    }

                    Text {
                        color: paymentDetailsCompleted ? "#00b123" : "#2699fb"
                        text: "Payment details"
                        Layout.alignment: Qt.AlignLeft
                        Layout.leftMargin: -30
                    }
                }

                Rectangle { width: 30; color: "transparent" }

                ColumnLayout {
                    id: summary
                    property bool summaryCompleted: false

                    Rectangle {
                        color: summaryCompleted ? "#00b123" : "#fff"
                        height: 20
                        width: 20
                        radius: 50
                        border { color: summaryCompleted ? "transparent" : "black" }
                        Layout.alignment: Qt.AlignTop
                        Layout.topMargin: -10
                    }

                    Text {
                        color: summaryCompleted ? "#00b123" : "#2699fb"
                        text: "Summary"
                        Layout.alignment: Qt.AlignLeft
                        Layout.leftMargin: -10
                    }
                }

                Rectangle { width: 40; color: "transparent" }

                ColumnLayout {
                    id: confirmation
                    property bool confirmationCompleted: false

                    Rectangle {
                        color: confirmationCompleted ? "#00b123" : "#fff"
                        height: 20
                        width: 20
                        radius: 50
                        border { color: confirmationCompleted ? "transparent" : "black" }
                        Layout.alignment: Qt.AlignTop
                        Layout.topMargin: -10
                    }

                    Text {
                        color: confirmationCompleted ? "#00b123" : "#2699fb"
                        text: "Completed"
                        Layout.alignment: Qt.AlignLeft
                        Layout.leftMargin: -30
                    }
                }
            }
        }

        Rectangle { height: 25; color: "transparent" }


        ComboBox {
            id: creditCardIssuer
            Layout.fillWidth: true
            Layout.margins: 10
            model: ["VISA", "MasterCard"]
        }

        Rectangle {
            width: 370
            height: 70
            color: "white"
            RowLayout {
                TextArea {
                    id: firstname
                    placeholderText: "Firstname"
                    Layout.leftMargin: 20
                }

                TextArea {
                    id: lastname
                    placeholderText: "Lastname"
                    Layout.leftMargin: 80
                }
            }
        }

        Rectangle {
            width: 370
            height: 110
            color: "white"
            ColumnLayout {
                TextField {
                    id: cardNumber
                    placeholderText: "Card Number"
                    Layout.leftMargin: 20
                }

                RowLayout {

                    TextField {
                        id: cvv
                        placeholderText: "CVV"
                        Layout.leftMargin: 20
                    }

                    TextField {
                        id: expirationDate
                        placeholderText: "Exp. Date"
                        Layout.leftMargin: 80
                    }
                }
            }
        }

        Rectangle {
            width: 370
            height: 60
            color: "white"

            ColumnLayout {

                TextField {
                    id: address
                    placeholderText: "Address"
                    Layout.leftMargin: 20
                }
            }
        }

        Rectangle {
            width: 370
            height: 110
            color: "white"
            ColumnLayout {

                RowLayout {

                    TextField {
                        id: city
                        placeholderText: "City"
                        Layout.leftMargin: 20
                    }

                    TextField {
                        id: stateProvince
                        placeholderText: "State"
                        Layout.leftMargin: 80
                    }
                }

                RowLayout {

                    TextField {
                        id: postalCode
                        placeholderText: "Postal Code"
                        Layout.leftMargin: 20
                    }

                    TextField {
                        id: country
                        placeholderText: "Country"
                        Layout.leftMargin: 80
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
        Layout.leftMargin: 10
        Layout.rightMargin: 10
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
