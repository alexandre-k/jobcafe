import QtQuick 2.12
import QtQuick.Controls 2.5

Popup {
    property string msg: "Houston, we've got a problem!"

    id: errorMessage
    modal: true
    parent: Overlay.overlay
    x: Math.round((parent.width - width) / 2)
    y: Math.round((parent.height - height) / 2)
    focus: true
    Text {
        text: msg
    }
}
