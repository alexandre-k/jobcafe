import QtQuick 2.12
import '../Utils.js' as Utils

PaymentDetailsForm {
    property var paymentMethod: {
        firstname: ""
        lastname: ""
        email: ""
        cardNumber: ""
        cvv: ""
        address: ""
        stateProvince: ""
        postalCode: ""
        city: ""
        country: ""
    }

    property var subscriptionPlan

    Component.onCompleted: {
        function updatePaymentMethod(data) {
            if (!data) {
                return;
            }
            paymentMethod = data;
            var index = creditCardIssuer.find(data.card.issuer);
            creditCardIssuer.currentIndex = index;
            var [fname, lname] = data.cardholderName.split(' ');
            firstname.text = fname
            lastname.text = lname
            cardNumber.text = data.cardNumber;
            cvv.text = data.cvv;
            expirationDate.text = data.expirationDate;
            city.text = data.city;
            stateProvince.text = data.stateProvince;
            postalCode.text = data.postalCode;
            country.text = data.country;
            address.text = data.address;
        }
        Utils.request('GET', '/payment-method/' + root.state.user.email, undefined, updatePaymentMethod);
    }

    creditCardIssuer.onDisplayTextChanged: {
        paymentMethod.card.issuer = creditCardIssuer.currentText;
    }

    firstname.onEditingFinished: {
        if (paymentMethod.cardholderName === undefined) {
            paymentMethod.cardholderName = firstname.text;
        } else {
            var [fname, lname] = paymentMethod.cardholderName.split(' ');
            paymentMethod.cardholderName = firstname.text + ' ' + lname;
        }
    }

    lastname.onEditingFinished: {
        if (paymentMethod.cardholderName === undefined) {
            paymentMethod.cardholderName = lastname.text;
        } else {
            var [fname, lname] = paymentMethod.cardholderName.split(' ');
            paymentMethod.cardholderName = fname + ' ' + lastname.text;
        }
    }

    cardNumber.onEditingFinished: {
        paymentMethod.cardNumber = cardNumber.text;
    }

    cvv.onEditingFinished: {
        paymentMethod.cvv = cvv.text;
    }

    expirationDate.onEditingFinished: {
        paymentMethod.expirationDate = expirationDate.text;
    }

    city.onEditingFinished: {
        paymentMethod.city = city.text;
    }

    stateProvince.onEditingFinished: {
        paymentMethod.stateProvince = stateProvince.text;
    }

    postalCode.onEditingFinished: {
        paymentMethod.postalCode = postalCode.text;
    }

    country.onEditingFinished: {
        paymentMethod.country = country.text;
    }

    address.onEditingFinished: {
        paymentMethod.address = address.text;
    }

    placeOrder.onClicked: {
        Utils.request('POST', '/payment-method', {paymentMethod: paymentMethod});
        stack.push("qrc:/ui/Payment/PaymentSummary.qml", {paymentMethod: paymentMethod, subscriptionPlan: subscriptionPlan});
    }
}
