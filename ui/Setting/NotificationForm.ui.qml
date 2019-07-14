import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    width: 410
    height: 580
    property alias subscription: subscription
    property alias newServices: newServices
    property alias pushNotifications: pushNotifications

    ColumnLayout {
        id: notificationLayout
        anchors.rightMargin: 50
        anchors.leftMargin: 100
        anchors.bottomMargin: 300
        anchors.fill: parent

        Layout.fillWidth: true
        Layout.fillHeight: true

        SwitchDelegate {
            id: pushNotifications
            text: qsTr("Push Notifications")
            Layout.fillWidth: true
            spacing: 0
        }

        SwitchDelegate {
            id: newServices
            text: qsTr("New Services")
            Layout.fillWidth: true
            anchors.left: parent.left
            anchors.leftMargin: 0
            display: AbstractButton.TextBesideIcon
            spacing: 0
            transformOrigin: Item.Center
        }

        SwitchDelegate {
            id: subscription
            text: qsTr("Subscription")
            Layout.fillWidth: true
            spacing: 0
        }



    }
}
