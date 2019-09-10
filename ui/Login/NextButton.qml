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
       Layout.minimumWidth: 190
       Layout.minimumHeight: 70
       Layout.alignment: Qt.AlignRight
       background: Rectangle {
           height: 100
           width: 500
           radius: 30
           color: "#3497fd"
       }
       contentItem: RowLayout {
           Rectangle { width: 40; color: "transparent" }

           Text {
               text: next.text
               font {
                   capitalization: Font.AllUppercase
                   pointSize: 16
                   letterSpacing: 1
               }
               color: "white"
           }

           Image {
               source: "right_arrow.svg"
               Layout.alignment: Qt.AlignRight
           }

           Rectangle { width: 20; color: "transparent" }
       }
    }
}
