import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

PaymentPlanForm {
    checkout.onClicked: {
        stack.push("qrc:/ui/Payment/PaymentDetails.qml");
    }

}
