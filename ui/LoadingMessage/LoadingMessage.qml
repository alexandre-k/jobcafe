import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Popup {
    property string msg: "Houston, we've got a problem!"

    id: errorMessage
    modal: true
    parent: Overlay.overlay
    width: textMsg.text.length + 300
    height: textMsg.text.length + 120
    x: Math.round((parent.width - width) / 2)
    y: Math.round((parent.height - height) / 2)
    focus: true
    ColumnLayout {
        width: parent.width

        BusyIndicator {
            running: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
        Text {
            id: textMsg
            text: msg
            font {
                family: "Montserrat"
                pointSize: 16
            }
            fontSizeMode: Text.Fit
            wrapMode: Text.WordWrap
            Layout.maximumWidth: parent.width
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }
}
