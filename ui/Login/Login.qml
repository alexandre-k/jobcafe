import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

SplitView {
    id: view
    orientation: Qt.Vertical

    Rectangle {
        id: presentation
        color: "#EFEFEF"
        width: parent.width
        height: parent.height / 2

        Text {
            id: title
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: subtitle.top
            text: "Cccccccccccc\nFFFFFfffffffffffff"
            font {
                bold: true
                pointSize: 16
            }
        }

        Text {
            id: subtitle
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: loginPicture.top
            text: "fffffff"
        }

        Image {
            id: loginPicture
            anchors.bottom: parent.bottom
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

           TabButton {
               id: signUpBtn
               text: qsTr("Sign Up")
               contentItem: Text {
                   text: signUpBtn.text
                   font {
                       family: "Europa"
                   }
                   horizontalAlignment: Text.AlignHCenter
                   verticalAlignment: Text.AlignVCenter
                   color: "black"

               }
           }

           TabButton {
               id: signInBtn
               text: qsTr("Sign In")
               contentItem: Text {
                   text: signInBtn.text
                   font {
                       family: "Europa"
                   }
                   horizontalAlignment: Text.AlignHCenter
                   verticalAlignment: Text.AlignVCenter
                   color: "black"
               }
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
