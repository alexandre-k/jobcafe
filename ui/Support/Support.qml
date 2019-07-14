import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
       id: support
       anchors.fill: parent
       property var user

           header: Column {
               width: parent.width
               anchors.top: parent.top
               anchors.margins: 10
               Image {
                   anchors.left: parent.left
                   anchors.margins: 20
                   source: "/images/arrow-left258.svg"
               }


               Text {
                   id: aboutTitle
                   width: parent.width
                   anchors.left: parent.left
                   anchors.margins: 60
                   text: qsTr("About Us")
                   color: "#444f63"
                   font {
                   pointSize: 16
                   bold: true
                   family: "Montserrat"
                   }
               }

               TabBar {
               id: tabBar
               anchors.top: title.bottom
               anchors.margins: 30
               width: parent.width
               currentIndex: swipeView.currentIndex

               TabButton {
                   text: qsTr("Open tickets")
               }

               TabButton {
                   text: qsTr("Closed tickets")
               }
           }
           }

       SwipeView {
           id: swipeView
           currentIndex: tabBar.currentIndex
           anchors.fill: parent

           OpenTickets {
           }
           ClosedTickets {
               user: support.user
           }
       }
   }
