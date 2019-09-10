import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

TextField {

    property string name
    property string image
    id: entry
    leftPadding: 35
    placeholderText: name
    Image {
        source: image
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 5
        fillMode: Image.PreserveAspectFit
    }
    font {
        family: "Segoe UI"
        pointSize: 14
    }

    Layout.alignment: Qt.AlignHCenter
    Layout.minimumWidth: 300
    Layout.topMargin: 20
}
