import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

SideMenuForm {
    property var drawer;
    function showView(qmlFile) {
        stack.push(qmlFile);
        drawer.close();
    }

    profile.clickableArea.onClicked: showView("qrc:/ui/Profile/Profile.qml")
    payment.clickableArea.onClicked: showView("qrc:/ui/Payment/PaymentPlanFrame.qml")
    support.clickableArea.onClicked: showView("qrc:/ui/Support/Support.qml")
    settings.clickableArea.onClicked: showView("qrc:/ui/Setting/Settings.qml")
    aboutUsClickableArea.onClicked: showView("qrc:/ui/About/About.qml")
    closeMenuClickableArea.onClicked: drawer.close()
    logoutClickableArea.onClicked: {
        stack.pop();
        drawer.close();
    }

}
