import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils

OpenTicketsForm {
    Component.onCompleted: {
        const updateTicketCategories = (data) => {
            const categories = Array.from(data).map(datum => datum.label);
            ticketCategory.model = categories;
        }

        Utils.request('GET', '/ticket-category/', undefined, updateTicketCategories);
    }
}
