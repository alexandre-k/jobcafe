import QtQuick 2.4
import "../Utils.js" as Utils

PaymentCompletedForm {
    property var planOrder

    goToHomePage.onClicked: {
        // Plan, Cart, Payment details, Summary, Completed
        [1, 2, 3, 4, 5].forEach( i => stack.pop());
    }

}
