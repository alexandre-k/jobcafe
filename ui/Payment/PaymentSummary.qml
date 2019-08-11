import QtQuick 2.4

PaymentSummaryForm {
    property var paymentMethod: ({})
    property var subscriptionPlan: ({})

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

    creditCardNumber.text: secureCreditCardNumber(paymentMethod.cardNumber)
    cardCvv.text: secureCvv(paymentMethod.cvv)

    processPayment.onClicked: {
        function updatePlanOrder(data) {
            planOrder = data
            stack.push("qrc:/ui/Payment/PaymentCompleted.qml", {subscriptionPlan: subscriptionPlan, paymentMethod: paymentMethod, planOrder: planOrder});
        }

        Utils.request('POST', '/order/', {planLabel: subscriptionPlan.label, email: "john.doe@gmail.com"}, updatePlanOrder);
    }
}
