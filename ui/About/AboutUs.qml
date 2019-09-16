import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ScrollView {

    ColumnLayout {
        width: root.width

        Text {
           text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed augue lacus viverra vitae congue eu consequat ac felis. Risus viverra adipiscing at in tellus. Risus pretium quam vulputate dignissim suspendisse in. Amet consectetur adipiscing elit duis tristique. Sit amet nisl purus in mollis nunc. Massa sed elementum tempus egestas sed sed. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Adipiscing commodo elit at imperdiet dui accumsan sit amet nulla. Eget aliquet nibh praesent tristique magna sit amet."
           fontSizeMode: Text.Fit
           wrapMode: Text.WordWrap
           lineHeight: 1.5
           font {
               pointSize: 14
               family: "Montserrat"
           }
           color: "#444f63"
           Layout.maximumWidth: root.width - 100
           Layout.margins: 40
        }
    }
}
