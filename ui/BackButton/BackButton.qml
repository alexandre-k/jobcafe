import QtQuick 2.12

Image {
    source: "/images/arrow-left258.svg"
    MouseArea {
        anchors.fill: parent
        onClicked: stack.pop()
    }
}
