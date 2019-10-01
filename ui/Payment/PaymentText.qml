import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

TextField {
    property string fieldText: fieldText
    text: fieldText
    Layout.preferredWidth: parent.width / 3
    Layout.fillWidth: true

//    font {
//        family: "Arial"
//        pointSize: 13
//    }
//    color: "black"
    font {
        family: "Arial"
        bold: true
        pointSize: 11
    }
    color: "#78849e"
}
