import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"
import "../JTabButton"

Page {

    header: ColumnLayout {

        BackButton {
            Layout.margins: 20
        }

        RowLayout {
            Text {
                text: "Payment plan"
                font {
                    family: "Montserrat"
                    bold: true
                    pointSize: 24
                }
                color: "#444f63"
                Layout.margins: 10
                Layout.leftMargin: 40
                Layout.fillWidth: true
            }

            Image {
                source: "cart.svg"
                Layout.margins: 10
                Layout.rightMargin: 20
            }
        }

       TabBar {
           id: tabBar
           Layout.fillWidth: true
           Layout.bottomMargin: 40
           currentIndex: swipeView.currentIndex

           JTabButton {
               textContent: qsTr("Payment plans")
           }

           JTabButton {
               textContent: qsTr("My plan")
           }
       }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        PaymentPlan {}
        MyPlan {}

    }
}
