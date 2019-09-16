import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"
import '../Utils.js' as Utils

Page {
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
        anchors.margins: 20
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

        RowLayout {
            Layout.leftMargin: 20

            Image {
                source: "enumeration.svg"
            }

            Rectangle { width: 10; color: "transparent" }

            Text {
                text: "GGGGGGGGGGG"
                font {
                    family: "Quicksand"
                    bold: true
                    pointSize: 18
                }
                color: "#000"
            }
        }

        RowLayout {
            Layout.leftMargin: 20
            Image {
                source: "enumeration.svg"
            }

            Rectangle { width: 10; color: "transparent" }

            Text {
                text: "GGGGGGGGGGG"
                font {
                    family: "Quicksand"
                    bold: true
                    pointSize: 18
                }
                color: "#000"
            }
        }

        RowLayout {
            Layout.leftMargin: 20
            Image {
                source: "enumeration.svg"
            }

            Rectangle { width: 10; color: "transparent" }

            Text {
                text: "GGGGGGGGGGGGG"
                font {
                    family: "Quicksand"
                    bold: true
                    pointSize: 18
                }
                color: "#000"
            }
        }

        Rectangle {
            width: root.width - 40
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
                        pointSize: 10
                    }
                    color: "#78849e"
                    Layout.bottomMargin: 0
                }

                PaymentText {
                    id: paymentPlan
                    text: subscription.plan.label + " Plan Jjjjjjjj"
                    font.pointSize: 13
                    color: "black"
                    Layout.topMargin: -5
                    Layout.bottomMargin: 0
                }

                PaymentText {
                    id: paymentDate
                    text: "Payment date: " + Utils.dateAsYyyyMmDd(subscription.createdDate);
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
                    text: "Estimated delivery date: " + Utils.dateAsYyyyMmDd(subscription.deliveryEstimate)
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
                    text: "Reference No. " + subscription.id
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
                    text: "Payment: $" + totalPrice
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
        Button {
            id: processPayment
            text: "Upgrade my plan"
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.fillWidth: true
            Layout.preferredHeight: 70
            Layout.leftMargin: 30
            Layout.rightMargin: 30
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
