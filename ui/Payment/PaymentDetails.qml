import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3

ColumnLayout {
    id: paymentInfo
    anchors.fill: parent
    anchors.margins: 50

    Text {
        text: "<h2>Payment details.</h2>"
        textFormat: Text.RichText
    }

    GridLayout {
        columns: 2

        ComboBox {
            Layout.fillWidth: true
            model: ["VISA", "MasterCard"]
        }

        Frame {
            background: Rectangle {
                color: "white"
            }

            TextField {
                id: name
                placeholderText: "Name"
            }
        }

        TextField {
            id: surname
            placeholderText: "Surname"
        }

        TextField {
            id: cardNumber
            placeholderText: "Card Number"
        }

        TextField {
            id: cvv
            placeholderText: "CVV"
        }

        TextField {
            id: expirationDate
            placeholderText: "Exp. Date"
        }

        TextField {
            id: address
            placeholderText: "Address"
        }

        TextField {
            id: city
            placeholderText: "City"
        }

        TextField {
            id: state
            placeholderText: "State"
        }

        TextField {
            id: postalCode
            placeholderText: "Postal Code"
        }

        TextField {
            id: country
            placeholderText: "Country"
        }
    }

    Button {
        id: next
        text: qsTr("Send verification")
        Layout.alignment: Qt.AlignHCenter
    }

}
