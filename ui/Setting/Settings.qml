import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    id: settings
    anchors.fill: parent

    header: ColumnLayout {
        BackButton {
            Layout.margins: 20
        }
        Text {
            text: qsTr("Setting")
            font {
                pointSize: 16
                bold: true
            }
            Layout.leftMargin: 20
        }
        TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            Layout.fillWidth: true
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
       Password {}
       Notification {}
    }

}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
