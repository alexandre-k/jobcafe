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
    anchors.fill: parent
    anchors.margins: 20
    width: root.width - 20

    ColumnLayout {
        width: parent.width

        Text {
            text: "Payment plan"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 18
            }
            color: "#444f63"
            Layout.margins: 10
            Layout.topMargin: 20
            Layout.leftMargin: 30
            Layout.fillWidth: true
        }

        Text {
            text: "Completed"
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
            Layout.margins: 20
            spacing: 20
            width: parent.width

            Timeline {
                productsCompleted: true
                paymentDetailsCompleted: true
                summaryCompleted: true
                confirmationCompleted: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.leftMargin: 10
            }

            Rectangle { height: 25; color: "transparent" }

            RowLayout {
                Image {
                    source: "completed.svg"
                }

                Text {
                    text: "Your plan has been updated successfully."
                    font {
                        family: "Arial"
                        pointSize: 13
                    }
                    color: "#3acce1"
                }
            }

            Rectangle {
                width: parent.width - 20
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
                            pointSize: 11
                        }
                        color: "#78849e"
                        Layout.bottomMargin: 0
                    }

                    PaymentText {
                        id: paymentPlan
                        text: planOrder.label
                        font.pointSize: 14
                        color: "black"
                        Layout.topMargin: -5
                        Layout.bottomMargin: 0
                    }

                PaymentText {
                    id: paymentDate
                    text: "Payment date: " + planOrder.createdDate
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

                PaymentText {
                    id: estimatedDeliveryDate
                    text: "Estimated delivery date: " + planOrder.deliveryEstimate
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

                PaymentText {
                    id: paymentReference
                    text: "Reference No. " + planOrder.id
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

                PaymentText {
                    id: paymentSum
                    text: "Payment: $" + planOrder.priceAllTaxIncluded
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

            Text {
                text: "It is important to record the receipt number as proof of your payment. You may be asked to provide your payment details should you have an enquiry regarding your payment plan"
                font {
                    family: "Arial"
                    bold: true
                    pointSize: 11
                }
                color: "#444f63"
                lineHeight: 2
                wrapMode: Text.WordWrap
                fontSizeMode: Text.Fit
                Layout.maximumWidth: root.width - 40
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Button {
                id: goToHomePage
                text: "Home page"
                Material.background: Material.Blue
                Material.foreground: "#ffffff"
                Layout.preferredHeight: 70
                Layout.preferredWidth: root.width - 60
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font {
                    family: "Roboto"
                    pointSize: 16
                    capitalization: Font.MixedCase
                    bold: false
                }
            }
        }
    }
}
