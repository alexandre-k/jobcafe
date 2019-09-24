import QtQuick 2.4
import QtQuick.Layouts 1.3

RowLayout {
    property string textField
    Layout.leftMargin: 20
    Image {
        source: "enumeration.svg"
    }

    Rectangle { width: 10; color: "transparent" }

    Text {
        text: textField
        font {
            family: "Quicksand"
            bold: true
            pointSize: 18
        }
        color: "#000"
    }
}
