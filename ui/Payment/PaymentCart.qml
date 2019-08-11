import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"
import "../ErrorMessage"

PaymentCartForm {
    checkout.onClicked: {
        if (subscriptionPlan) {
            stack.push("qrc:/ui/Payment/PaymentDetails.qml");
        } else {
            errorMessage.open()
        }
    }

    removeFromCartArea.onClicked: {
        subscriptionPlan = undefined;
    }

//    property alias price: price
//    property alias planReview: planReview
    ErrorMessage {
        id: errorMessage
    }

}
