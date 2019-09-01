import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

TabButton {
    id: tabButton
    property string textContent
    contentItem: Rectangle {
        color: "transparent"
        Text{
            text: textContent
            color: tabButton.checked ? "#444f63" : "#A29F9F"
            font {
                family: "Europa"
                pointSize: 14
                capitalization: Font.MixedCase
                bold: true
            }
            anchors.centerIn: parent
        }
    }
}
