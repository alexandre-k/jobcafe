import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {

    property string etext
    property bool completed: false
    property string completeColor: "#00b123"
    property string incompleteColor: "#fff"
    property int textSize: 12

    Rectangle {
        color: completed ? completeColor : incompleteColor
        height: ballSize
        width: ballSize
        radius: ballRadius
        border { color: completed ? "transparent" : "black" }
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.topMargin: -10
        Text {
            anchors.top: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: -10
            horizontalAlignment: Qt.AlignHCenter
            width: 40

            color: completed ? completeColor : "#2699fb"
            text: etext
            font { pointSize: textSize }
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    //        Layout.leftMargin: -root.width / 8
            fontSizeMode: Text.Fit
            wrapMode: Text.WordWrap
        }
    }


}
