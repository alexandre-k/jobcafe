import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

SideMenuForm {
    property var drawer;
    profile.clickableArea.onClicked: {
        stack.push("qrc:/ui/Profile/Profile.qml", {user: appstate.getUser()});
        drawer.close();
    }

    payment.clickableArea.onClicked: {
        stack.push("qrc:/ui/Payment/PaymentDetails.qml");
        drawer.close();
    }

    support.clickableArea.onClicked: {
        stack.push("qrc:/ui/Support/Support.qml");
        drawer.close();
    }

    settings.clickableArea.onClicked: {
        stack.push("qrc:/ui/Setting/Settings.qml");
        drawer.close();
    }

//    property alias profile: profile
//    property alias payment: payment
//    property alias support: support
//    property alias settings: settings

//    StackView {
//        initialItem:
//	    profile.clickableArea.onClicked: {

//	    }
//    }
}


//    StackView {
//        id: stack
//        // initialItem: welcome
//        initialItem: login
//        anchors.fill: parent
//        Home {
//            id: home
//        }

//        Login {
//            id: login
//            user: state.user
//            stack: stack
//            home: home
//        }
//        Welcome {
//            id: welcome
//            stack: stack
//            login: login

//        }
