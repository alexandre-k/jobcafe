import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

TextField {
    property string fieldText: fieldText
    placeholderText: fieldText
    Layout.preferredWidth: parent.width / 3
    Layout.fillWidth: true
    Layout.leftMargin: 20
    Layout.topMargin: 10
    Layout.alignment: Qt.AlignBottom

    background: Rectangle {
        color: "white"
    }
    font {
        family: "Arial"
        pointSize: 13
    }
    color: "black"
    placeholderTextColor: "#454f63"
}
