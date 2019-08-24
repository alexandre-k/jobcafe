import QtQuick 2.12

Rectangle {
    width: 25
    height: 25
    opacity: 1
    color: "transparent"
    Image {
        source: "/images/arrow-left258.svg"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: stack.pop()
    }

}
