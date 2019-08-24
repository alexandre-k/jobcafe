import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"
import "../ErrorMessage"
import "../Utils.js" as Utils

Page {

    property var subscriptionPlans

    Component.onCompleted: {
        function updateSubscriptionPlan(data) {
            subscriptionPlans = data
        }

        Utils.request('GET', `/subscription-plan`, {}, updateSubscriptionPlan);

    }


    function selectPlan(label) {
        if (subscriptionPlans === undefined) {
            errorMessage.msg = "Could not get subscription plans! Verify your Internet connection."
            errorMessage.open();
        }

        const subscriptionPlan = subscriptionPlans.find(plan => plan.label === label);
        console.log(subscriptionPlan)
        subscriptionPlan.priceAllTaxIncluded = Number(subscriptionPlan.price) + Number(subscriptionPlan.tax);
        stack.push("qrc:/ui/Payment/PaymentCart.qml", {subscriptionPlan: subscriptionPlan});
    }

    ErrorMessage { id: errorMessage }

    ColumnLayout {

        Rectangle {
            height: 100
        }

        ListModel {
            id: paymentPlans
            ListElement {
                imageSource: "standard.png"
                label: "Standard Plan"
            }
            ListElement {
                imageSource: "basic.png"
                label: "Basic Plan"
            }
            ListElement {
                imageSource: "premium.png"
                label: "Premium Plan"
            }
        }



        Component {
            id: delegate

                Rectangle {
                    width: 200
                    height: 300
                    color: "transparent"
                    clip: true
                    opacity: PathView.isCurrentItem ? 1 : 0.5
                    scale: PathView.iconScale
                    z: PathView.isCurrentItem ? 1: 0

                Image {
                    id: plan
                    property string name: label
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 200
                    height: 300
                    fillMode: Image.PreserveAspectFit
                    source: imageSource

                    MouseArea {
                        anchors.fill: parent
                        onClicked: selectPlan(plan.name)
                    }

                }

            }
        }

        PathView {
            Layout.preferredHeight: 300
            Layout.preferredWidth: 380
            preferredHighlightBegin: 0
            preferredHighlightEnd: 1
            highlightRangeMode:  PathView.StrictlyEnforceRange
            model: paymentPlans
            delegate: delegate
            path: Ellipse {}

        }
    }

}
