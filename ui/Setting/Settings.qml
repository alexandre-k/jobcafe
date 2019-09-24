import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../BackButton"
import "../JTabButton"

Page {
    id: settings
    anchors.fill: parent

    header: ColumnLayout {
        BackButton {}
        Text {
            text: qsTr("Setting")
            font {
                family: "Montserrat"
                pointSize: 24
                bold: true
            }
            color: "#444f63"
            Layout.bottomMargin: root.height / 40
            Layout.leftMargin: 40
        }
        TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            contentHeight: root.height / 20
            Layout.fillWidth: true
            Layout.margins: 20

            JTabButton {
                textContent: qsTr("Password")
            }

            JTabButton {
                textContent: qsTr("Notification")
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
