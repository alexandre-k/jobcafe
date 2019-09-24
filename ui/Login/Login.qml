import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../JTabButton"

SplitView {
    id: view
    orientation: Qt.Vertical
    anchors.fill: parent

    ColumnLayout {
        id: presentation
        width: root.width

        Rectangle { height: root.height / 30; color: "transparent" }

        Text {
            id: title
            Layout.preferredWidth: root.width
            horizontalAlignment: Text.AlignHCenter

            text: "Create Your Job Application"
            wrapMode: Text.WordWrap
            font {
                family: "Europa"
                pointSize: loginTitleSize
            }
            color: "#444f63"

            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Rectangle {
            id: line
            height: 2
            Layout.preferredWidth: root.width / 4
            color: "#7f7f7f"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Text {
            id: subtitle
            text: "To Your Dream Job"
            font {
                family: "Europa"
                pointSize: 20
            }
            color: "#444f63"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Rectangle { height: root.height / 30; color: "transparent" }

        Image {
            id: loginPicture
            fillMode: Image.PreserveAspectFit
            source: "qrc:images/signin.svg"
            Layout.minimumWidth: root.width
        }
    }

   Page {
       id: form
       width: parent.width
       height: parent.height / 2

       header:TabBar {
           id: tabBar
           currentIndex: swipeView.currentIndex
           contentHeight: root.height / 20

           JTabButton {
               id: signUpBtn
               textContent: qsTr("Sign Up")
           }

           JTabButton {
               id: signInBtn
               textContent: qsTr("Sign In")
           }
       }

       SwipeView {
           id: swipeView
           anchors.fill: parent
           currentIndex: tabBar.currentIndex

           SignUp {}
           SignIn {}
       }
   }
}
