import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../BackButton"
import "../JTabButton"

Page {
    id: aboutUs

    header: Rectangle {
        opacity: 1
        width: root.width
        height: 200
        color: "#eceff0"

        ColumnLayout {
            width: parent. width
            BackButton {}

            Text {
               id: aboutTitle
               text: qsTr("About Us")
               color: "#444f63"
               font {
                   pointSize: 24
                   bold: true
                   family: "Montserrat"
               }
               Layout.leftMargin: 30
            }

            TabBar {
                id: tabBar
                Layout.fillWidth: true
                Layout.topMargin: root.height / 50
                Layout.bottomMargin: root.height / 50
                currentIndex: swipeView.currentIndex
                contentHeight: root.height / 20
                opacity: 1

                JTabButton {
                   textContent: qsTr("About Us")
                }

                JTabButton {
                   textContent: qsTr("Terms of Use")
                }
            }
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        AboutUs {}
        TermsOfUse {}
    }
}
