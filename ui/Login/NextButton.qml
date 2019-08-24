import QtQuick 2.12
import QtQuick.Controls.Material 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

RowLayout {
    property alias next: next
    property string btext
    Button {
       id: next

       text: btext
       font.capitalization: Font.AllUppercase
       Material.background: Material.Blue
       Material.foreground: "#ffffff"
       Layout.minimumWidth: 200
       Layout.minimumHeight: 60
       Layout.alignment: Qt.AlignRight
       background: Rectangle {
           height: 60
           width: 500
           radius: 30
           color: "#3497fd"
       }
       contentItem: RowLayout {
           Rectangle {
               width: 50
           }

           Text {
               text: next.text
               font {
                   capitalization: Font.AllUppercase
                   pointSize: 13
                   letterSpacing: 1
               }
               color: "white"
           }

           Image {
               source: "right_arrow.svg"
               Layout.alignment: Qt.AlignRight
           }

           Rectangle {
               width: 30
           }
       }
    }
}
