import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils

ScrollView {
    id: myPlan

    property var subscription
    property string totalPrice

    Component.onCompleted: {

        function updateOrderedPlan(data) {
            subscription = data;
            totalPrice = String(Number(subscription.plan.price) + Number(subscription.plan.tax));
        }

        Utils.request('GET', `/order?email=` + root.state.user.email, {}, updateOrderedPlan);
      }

    Text {
        text: "No current subscription found."
        visible: root.state.user.membership ? false : true
        anchors.fill: parent
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
        fontSizeMode: Text.Fit
        font {
            family: "Quicksand"
            pointSize: 24
            bold: true
        }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 30
        visible: root.state.user.membership ? true : false

        RowLayout {
            Layout.leftMargin: 20
            Text {
                text: subscription.plan.label + " Plan"
                font {
                    family: "Quicksand"
                    pointSize: 24
                    bold: true
                }
                color: "#000"
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft
            }

            Text {
                text: "$" + totalPrice.split('.')[0]
                font {
                    family: "Quicksand"
                    pointSize: 32
                    bold: true
                }
                color: "#333"
            }

            Text {
                text: totalPrice.split('.')[1]
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
                Layout.leftMargin: 10
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

        MyPlanText { textField: "GGGGGGGGGGG" }

        MyPlanText { textField: "GGGGGGGGGGG" }

        MyPlanText { textField: "GGGGGGGGGGG" }

        Rectangle {
            Layout.fillWidth: true
            Layout.minimumWidth: 3 * root.width / 4
            Layout.preferredHeight: root.height / 4
            color: "white"

            ColumnLayout {
                id: columnLayout
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.margins: 20
                width: parent.width
                spacing: 0

                PaymentText {
                    text: "Payment Summary"
                }

                PaymentText {
                    id: paymentPlan
                    text: subscription.plan.label + " Plan Jjjjjjjj"
                    font.pointSize: 13
                    color: "black"
                }

                PaymentText {
                    id: paymentDate
                    text: "Payment date: " + Utils.dateAsYyyyMmDd(subscription.createdDate);
                }

                PaymentText {
                    id: estimatedDeliveryDate
                    text: "Estimated delivery date: " + Utils.dateAsYyyyMmDd(subscription.deliveryEstimate)
                }

                PaymentText {
                    id: paymentReference
                    text: "Reference No. " + subscription.id
                }

                PaymentText {
                    id: paymentSum
                    text: "Payment: $" + totalPrice
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
            Layout.leftMargin: root.width / 9
            Layout.rightMargin: root.width / 9
            font {
                family: "Titillium Web"
                pointSize: 13
                capitalization: Font.MixedCase
                bold: true
                underline: true
            }
        }
    }
}
