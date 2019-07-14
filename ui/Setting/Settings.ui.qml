import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: settings

    Text {
        text: qsTr("Setting")
        font {
            pointSize: 16
            bold: true
        }
    }

    Page {
        id: page
        width: 200
        height: 200

        TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            width: parent.width

            Layout.fillWidth: true
            Layout.fillHeight: true

            TabButton {
                text: qsTr("Password")
            }

            TabButton {
                text: qsTr("Notification")
            }
        }

        SwipeView {
            id: swipeView
            x: 15
            y: 93
            currentIndex: tabBar.currentIndex
            Layout.fillWidth: true
            Layout.fillHeight: true


            Password {}
            Notification {}
        }
    }

}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
