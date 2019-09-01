import QtQuick 2.4
import "../LoadingMessage"
import "../Utils.js" as Utils

PaymentSummaryForm {
    property var paymentMethod: ({})
    property var subscriptionPlan: ({})

    Component.onCompleted: {
        paymentMethod = {
            card: "Visa",
            cardNumber: "5555********3333",
            cardholderName: "Alexandre Krispin",
            cvv: 734,
            expirationDate: "2019/10",
            address: "Shimotakaido 4-44-13",
            city: "Tokyo",
            stateProvince: "Tokyo",
            postalCode: "111-3021",
            country: "France",
            firstname: "Alexandre",
            lastname: "Krispin"
        }
        subscriptionPlan = {
            label: "Premium Plan",
            price: 10.23,
            tax: 4,
            priceAllTaxIncluded: 14.23
        }
    }

    function secureCreditCardNumber(cardNumbers) {
        if (cardNumbers.length < 15) {
            return;
        }
        cardNumbers.entries((index, number) => {
            if (index > 4 && index < 13) {
                cardNumbers.replaceAt(index, "*");
            }
        });
        return cardNumbers;
    }

    function secureCvv(numbers) {
        numbers.entries((index, number) => numbers.replaceAt(index, "*"));
        return numbers;
    }

//    creditCardNumber.text: secureCreditCardNumber(paymentMethod.cardNumber)
//    cardCvv.text: secureCvv(paymentMethod.cvv)

    processPayment.onClicked: {
        function updatePlanOrder(data) {
            var planOrder = data
            loadingMessage.close();
            stack.push("qrc:/ui/Payment/PaymentCompleted.qml", {subscriptionPlan: subscriptionPlan, paymentMethod: paymentMethod, planOrder: planOrder});
        }

        Utils.request('POST', '/order/', {label: subscriptionPlan.label, orderer: root.state.user.email}, updatePlanOrder);
        loadingMessage.open();
    }

    LoadingMessage {
        id: loadingMessage
        msg: "Processing your order. Please, wait..."
    }
}
