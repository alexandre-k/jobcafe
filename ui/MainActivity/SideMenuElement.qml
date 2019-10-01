import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Item {

    width: 100
    height: 40

    property string image
    property string label
    property string identifier
    property alias clickableArea: clickableArea
    MouseArea {
        id: clickableArea
        anchors.fill: parent
    }
    RowLayout {

        spacing: root.width / 15

        Image {
            id: icon
            source: image
            fillMode: Image.PreserveAspectFit
            sourceSize {
                 height: 30
                 width: 30
             }
            Layout.alignment: Qt.AlignLeft
            Layout.preferredHeight: 30
            Layout.preferredWidth: 30
        }
        Text {
            text: label
            color: "#444f63"
            font {
                family: "Montserrat"
                pointSize: 16
            }
            Layout.alignment: Qt.AlignRight
        }
    }
}
