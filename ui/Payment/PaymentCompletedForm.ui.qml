import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: paymentCompletedForm
    property alias paymentDate: paymentDate
    property alias estimatedDeliveryDate: estimatedDeliveryDate
    property alias paymentReference: paymentReference
    property alias paymentSum: paymentSum
    property alias goToHomePage: goToHomePage
    property alias paymentPlan: paymentPlan

    ColumnLayout {

        Text {
            text: "Payment plan"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 16
            }
            color: "#444f63"
            Layout.margins: 20
            Layout.leftMargin: 40
        }

        Text {
            text: "Completed"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 18
            }
            color: "#444f63"
            Layout.bottomMargin: 10
            Layout.leftMargin: 20
        }

        Text {
            text: "Your plan has been updated successfully"
            font {
                family: "Arial"
                pointSize: 12
            }
            color: "#3acce1"
            Layout.leftMargin: 20
        }

        Rectangle {
            width: 370
            height: 200
            color: "white"
            Layout.leftMargin: 20
            ColumnLayout {
                id: columnLayout
                PaymentText {
                    text: "Payment Summary"
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: paymentPlan
                    text: subscriptionPlan.label
                    font.pointSize: 14
                    color: "black"
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: paymentDate
                    text: "Payment date: " + planOrder.createdDate
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: estimatedDeliveryDate
                    text: "Estimated delivery date: " + planOrder.deliveryEstimate
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: paymentReference
                    text: "Reference No. " + planOrder.id
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }

                PaymentText {
                    id: paymentSum
                    text: "$" + subscriptionPlan.priceAllTaxIncluded
                    Layout.topMargin: 0
                    Layout.leftMargin: 20
                }
            }
        }

        Text {
            width: 380
            text: "It is important to record the receipt number as proof of your payment. You may be asked to provide your payment details should you have an enquiry regarding your payment plan"
            font {
                family: "Arial"
                bold: true
            }
            color: "#444f63"

            wrapMode: Text.WordWrap
            Layout.maximumWidth: parent.width
            Layout.margins: 20
        }

        Button {
            id: goToHomePage
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
