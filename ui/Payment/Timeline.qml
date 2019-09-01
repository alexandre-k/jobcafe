import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Rectangle {
    height: 2
    color: "lightGray"
    width: root.width - 100
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    property string completeColor: "#00b123"
    property string incompleteColor: "#fff"
    property bool productsCompleted: false
    property bool paymentDetailsCompleted: false
    property bool summaryCompleted: false
    property bool confirmationCompleted: false
    property int textSize: 14

    RowLayout {
        id: products

        ColumnLayout {

            Rectangle {
                color: productsCompleted ? completeColor : incompleteColor
                height: 20
                width: 20
                radius: 50
                border { color: productsCompleted ? "transparent" : "black" }
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: -10
            }

            Text {
                color: productsCompleted ? completeColor : "#2699fb"
                text: "Products"
                font { pointSize: textSize }
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: -20
            }
        }

        Rectangle { width: 50; color: "transparent" }

        ColumnLayout {
            id: paymentDetails

            Rectangle {
                color: paymentDetailsCompleted ? completeColor : incompleteColor
                height: 20
                width: 20
                radius: 50
                border { color: paymentDetailsCompleted ? "transparent" : "black" }
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: -10
            }

            Text {
                color: paymentDetailsCompleted ? completeColor : "#2699fb"
                text: "Payment details"
                font { pointSize: textSize }
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: -40
            }
        }

        Rectangle { width: 30; color: "transparent" }

        ColumnLayout {
            id: summary

            Rectangle {
                color: summaryCompleted ? completeColor : incompleteColor
                height: 20
                width: 20
                radius: 50
                border { color: summaryCompleted ? "transparent" : "black" }
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: -10
            }

            Text {
                color: summaryCompleted ? completeColor : "#2699fb"
                text: "Summary"
                font { pointSize: textSize }
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: -20
            }
        }

        Rectangle { width: 40; color: "transparent" }

        ColumnLayout {
            id: confirmation

            Rectangle {
                color: confirmationCompleted ? completeColor : incompleteColor
                height: 20
                width: 20
                radius: 50
                border { color: confirmationCompleted ? "transparent" : "black" }
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: -10
            }

            Text {
                color: confirmationCompleted ? completeColor : "#2699fb"
                text: "Completed"
                font { pointSize: textSize }
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: -30
            }
        }
    }
}

