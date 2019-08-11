import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"
import "../ErrorMessage"
import "../Utils.js" as Utils

PaymentPlanForm {

    property var subscriptionPlans

    Component.onCompleted: {
        function updateSubscriptionPlan(data) {
            subscriptionPlans = data
        }

        Utils.request('GET', `/subscription-plan`, {}, updateSubscriptionPlan);

    }

    PropertyAnimation {
        id: showBasic
        target: basic
        properties: "Layout.maximumWidth"
        to: 200
        duration: 100
    }
    PropertyAnimation {
        id: hideBasic
        target: basic
        properties: "Layout.maximumWidth"
        to: 100
        duration: 100
    }
    PropertyAnimation {
        id: showStandard
        target: standard
        properties: "Layout.maximumWidth"
        to: 200
        duration: 100
    }
    PropertyAnimation {
        id: hideStandard
        target: standard
        properties: "Layout.maximumWidth"
        to: 100
        duration: 100
    }
    PropertyAnimation {
        id: showPremium
        target: premium
        properties: "Layout.maximumWidth"
        to: 200
        duration: 100
    }
    PropertyAnimation {
        id: hidePremium
        target: premium
        properties: "Layout.maximumWidth"
        to: 100
        duration: 100
    }

    basicArea.onClicked: {
        showBasic.start()
        hideStandard.start()
        hidePremium.start()
    }

    standardArea.onClicked: {
        hideBasic.start()
        showStandard.start()
        hidePremium.start()
    }

    premiumArea.onClicked: {
        hideBasic.start()
        hideStandard.start()
        showPremium.start()
    }

    function goToNext(index) {
        if (subscriptionPlans === undefined) {
            errorMessage.msg = "Could not get subscription plans! Verify your Internet connection."
            errorMessage.open();
        }
        const subscriptionPlan = subscriptionPlans[index];
        subscriptionPlan.priceAllTaxIncluded = Number(subscriptionPlan.price) + Number(subscriptionPlan.tax);
        stack.push("qrc:/ui/Payment/PaymentCart.qml", {subscriptionPlan: subscriptionPlan});
    }

    basicArea.onDoubleClicked: {
        goToNext(0);
    }

    standardArea.onDoubleClicked: {
        goToNext(1);
    }

    premiumArea.onDoubleClicked: {
        goToNext(2);
    }

    ErrorMessage { id: errorMessage }

}
