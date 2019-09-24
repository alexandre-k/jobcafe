import QtQuick 2.12
import QtQuick.Layouts 1.3


Rectangle {
    property alias backButtonArea: backButtonArea
    width: 25
    height: 25
    opacity: 1
    color: "transparent"
    Image {
        source: "/images/arrow-left258.svg"
    }
    MouseArea {
        id: backButtonArea
        anchors.fill: parent
        onClicked: stack.pop()
    }
    Layout.margins: 20
    Layout.bottomMargin: root.height / 60

}
