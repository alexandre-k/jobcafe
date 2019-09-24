import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

TabButton {
    id: tabButton
    property string textContent
    height: root.height / 15
    contentItem: Text{
            text: textContent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            anchors.bottom: tabButton.bottom
            anchors.top: tabButton.top
            anchors.topMargin: 50
            opacity: tabButton.checked ? 1 : 0.5
            color: "#444f63"
            font {
                family: "Europa"
                pointSize: 16
                capitalization: Font.MixedCase
                bold: true
            }
    }
}
