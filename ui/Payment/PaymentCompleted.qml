import QtQuick 2.4
import "../Utils.js" as Utils

PaymentCompletedForm {
    property var planOrder

//    Component.onCompleted: {
//        planOrder = {
//            label: "Premium Plan",
//            orderer: "k.m.alexandre@gmail.com",
//            createdDate: "2019/10",
//            deliveryEstimate: "2019/11",
//            id: "RF 124-03",
//            priceAllTaxIncluded: 12.99
//        }
//    }
    goToHomePage.onClicked: {
        // Plan, Cart, Payment details, Summary, Completed
        [1, 2, 3, 4, 5].forEach( i => stack.pop());
    }

}
