import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: settings
    anchors.fill: parent
    property var user

    header: ColumnLayout {
        Image {
            anchors.left: parent.left
            anchors.margins: 20
            source: "/images/arrow-left258.svg"
        }
        Text {
            text: qsTr("Setting")
            font {
                pointSize: 16
                bold: true
            }
        }
        TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            TabButton {
                text: qsTr("Password")
            }

            TabButton {
                text: qsTr("Notification")
            }
        }
    }

   SwipeView {
       id: swipeView
       anchors.fill: parent
        currentIndex: tabBar.currentIndex
        orientation: Qt.Horizontal


       Password {
           user: settings.user
       }
       Notification {
           user: settings.user
       }
    }

}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
