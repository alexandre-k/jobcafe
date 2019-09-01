import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../JTabButton"

SplitView {
    id: view
    orientation: Qt.Vertical

    ColumnLayout {
        id: presentation

        Rectangle { height: 40; color: "transparent" }

        Text {
            id: title
            width: 25
            horizontalAlignment: Text.AlignHCenter
            text: "Create Your\n Job Application"
            wrapMode: Text.WordWrap
            font {
                family: "Europa"
                pointSize: 30
            }
            color: "#444f63"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Rectangle {
            id: line
            height: 2
            width: 100
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

        Rectangle { height: 40; color: "transparent" }

        Image {
            id: loginPicture
            fillMode: Image.PreserveAspectFit
            source: "qrc:images/signin.svg"
        }
    }

   Page {
       id: form
       width: parent.width
       height: parent.height / 2

       header:TabBar {
           id: tabBar
           currentIndex: swipeView.currentIndex

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
