import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Rectangle {
    height: 2
    color: "lightGray"
    width: 7 * root.width / 10
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    property bool productsCompleted: false
    property bool paymentDetailsCompleted: false
    property bool summaryCompleted: false
    property bool confirmationCompleted: false
    property int ballSize: 20
    property int ballRadius: 50

    RowLayout {
        id: products
        width: parent.width
        spacing: parent.width / 4

        TimelineElement {
            etext: "Products"
            completed: productsCompleted
        }

        TimelineElement {
            etext: "Payment details"
            completed: paymentDetailsCompleted
        }

        TimelineElement {
            etext: "Summary"
            completed: summaryCompleted
        }

        TimelineElement {
            etext: "Completed"
            completed: summaryCompleted
        }

    }
}

