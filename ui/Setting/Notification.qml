import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils


NotificationForm {

    id: notificationForm

    property var user

    subscription.checked: user.subscribed;
    newServices.checked: user.isNewServiceAdvertised;
    pushNotifications.checked: user.isNewMessageNotified;

    subscription.onClicked: {
        user.subscribed = subscription.checked;
        Utils.request('PUT', `/user/`, user);
    }

    /*
     * Notify by email a user about a new service.
     */
    newServices.onClicked: {
        user.isNewServiceAdvertised = newServices.checked;
        Utils.request('PUT', `/user/`, user);
    }

    /*
     * Notifications are made for letting the user know when a new reply has arrived for ticket.
     */
    pushNotifications.onClicked: {
        user.isNewMessageNotified = pushNotifications.checked;
        Utils.request('PUT', `/user/`, user);
    }
}
