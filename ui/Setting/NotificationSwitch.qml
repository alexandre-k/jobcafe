import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12

Switch {
    id: switchId
    Layout.fillWidth: true
    Layout.margins: 40

    indicator: Rectangle {
        implicitWidth: circle.width + 30
        implicitHeight: circle.height
        x: switchId.width - width - switchId.rightPadding
        y: parent.height / 2 - height / 2
        radius: 20
        color: switchId.checked ? "#8a56ac" : "#ffffff"
        border.color: switchId.checked ? "#8a56ac" : "#cccccc"
        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            horizontalOffset: 1
            verticalOffset: 1
            radius: 8.0
            samples: 16
            smooth: true
            color: "#80000000"
        }

        Rectangle {
            id: circle
            x: switchId.checked ? parent.width - width : 0
            width: 35
            height: 35
            radius: 50
            color: switchId.down ? "#8a56ac" : "#ffffff"
            border.color: switchId.checked ? (switchId.down ? "#8a56ac" : "#8a56ac") : "#999999"
            border.width: 2
        }
    }

    contentItem: Text {
        text: switchId.text
        font {
            family: "Europa"
            bold: true
            pointSize: 15
        }
        color: "#334856"
        elide: Text.ElideRight
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        rightPadding: switchId.indicator.width + switchId.spacing
        Layout.alignment: Qt.ALignRight
    }
}
