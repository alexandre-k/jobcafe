import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3


Row {

    property string image
    property string label
    property string identifier
    property alias clickableArea: clickableArea

    height: icon.implicitHeight
    width: parent.width
    spacing: 20
    Item {
        width: 100
        height: 100
    Image {
        id: icon
        width: 50
        height: 50
        source: image
        fillMode: Image.PreserveAspectFit
    }
    Text {
        text: label
        color: "#444f63"
        font {
            family: "Montserrat"
            pointSize: 12
        }
    }
    MouseArea {
        id: clickableArea
        anchors.fill: parent
    }
    }
}
