import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils


NotificationForm {

    id: notificationForm

    subscription.checked: root.state.user.subscribed;
    newServices.checked: root.state.user.isNewServiceAdvertised;
    pushNotifications.checked: root.state.user.isNewMessageNotified;

    subscription.onClicked: {
        root.state.user.subscribed = subscription.checked;
        Utils.request('PUT', `/user/`, root.state.user);
    }

    /*
     * Notify by email a user about a new service.
     */
    newServices.onClicked: {
        root.state.user.isNewServiceAdvertised = newServices.checked;
        Utils.request('PUT', `/user/`, root.state.user);
    }

    /*
     * Notifications are made for letting the user know when a new reply has arrived for ticket.
     */
    pushNotifications.onClicked: {
        root.state.user.isNewMessageNotified = pushNotifications.checked;
        Utils.request('PUT', `/user/`, root.state.user);
    }
}
