import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    width: root.width - 40
    height: root.height
    property alias subscription: subscription
    property alias newServices: newServices
    property alias pushNotifications: pushNotifications

    ColumnLayout {
        id: notificationLayout
        width: parent.width
        spacing: -50

        NotificationSwitch {
            id: pushNotifications
            text: qsTr("Push Notifications")
        }
        NotificationSwitch {
            id: newServices
            text: qsTr("New Services")
        }

        NotificationSwitch {
            id: subscription
            text: qsTr("Subscription")
        }



    }
}
