import QtQuick 2.4
import "../Utils.js" as Utils

PaymentCompletedForm {
    property var planOrder
    Component.onCompleted: {
        function updatePlanOrder(data) {
            planOrder = data
        }

        Utils.request('GET', '/order/' + state.user.email, undefined, updatePlanOrder);
    }

    goToHomePage.onClicked: {
        // Products, Payment details, Summary, Completed
        [1, 2, 3, 4].forEach( i => stack.pop());
    }

}
