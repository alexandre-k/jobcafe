import QtQuick 2.12

Image {
    anchors.left: parent.left
    anchors.margins: 20
    source: "/images/arrow-left258.svg"
    MouseArea {
        anchors.fill: parent
        onClicked: stack.pop()
    }
}
