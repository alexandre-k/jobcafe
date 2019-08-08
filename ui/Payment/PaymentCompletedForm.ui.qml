import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    property alias paymentDate: paymentDate
    property alias estimatedDeliveryDate: estimatedDeliveryDate
    property alias paymentReference: paymentReference
    property alias paymentSum: paymentSum
    property alias button: button

    ColumnLayout {

        Text {
            text: "Payment plan"
        }

        Text {
            text: "Completed"
        }

        Text {
            text: "Your plan has been updated successfully"
            font {
                family: "Arial"
            }
            color: "#3acce1"
        }

        Rectangle {
            width: 380
            height: 200
            color: "white"
            Layout.leftMargin: 10
            ColumnLayout {
                id: columnLayout
                PaymentText {
                    text: "Payment Summary"
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: paymentPlan
                    text: "Premium Plan JJJJJ"
                    font.pointSize: 14
                    color: "black"
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: paymentDate
                    text: "Payment date: 11/11/2018"
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: estimatedDeliveryDate
                    text: "Estimated delivery date: 11/11/2019"
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: paymentReference
                    text: "Reference No. FG123512"
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: paymentSum
                    text: "$69.99"
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }
            }
        }

        Text {
            width: 380
            text: "It is important to record the receipt number as proof of your payment. You may be asked to provide your payment details should you have an enquiry regarding your payment plan"
            wrapMode: Text.WordWrap
        }

        Button {
            id: button
            text: "Home page"
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.fillWidth: true
            Layout.rightMargin: 50
            Layout.leftMargin: 50
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
