import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import '../Utils.js' as Utils


ClosedTicketsForm{

    property var user

    Component.onCompleted: {
        const updateTickets = (data) => {
            console.log('DATA ***********')
            const tickets = Array.from(data).map(datum => datum);
            console.log(tickets[0])
            model: tickets

        }
    //            ListElement {
    //                userName: "John Doe"
    //                responsible: "David James"
    //                lastMessageExcerpt: "Lorem ipsum dolorsit amet..."
    //                lastUpdatedAt: "January 1st"
    //            }

        Utils.request('GET', `/ticket?` + user, undefined, updateTickets);

    }
}
