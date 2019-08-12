import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Popup {
    property string msg: "Houston, we've got a problem!"

    id: errorMessage
    width: textMsg.text.length + 200
    height: textMsg.text.length + 100
    modal: true
    parent: Overlay.overlay
    x: Math.round((parent.width - width) / 2)
    y: Math.round((parent.height - height) / 2)
    focus: true

    ColumnLayout {
        anchors.centerIn: parent
        Image {
            // Credit author
            // <div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/"                 title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"                 title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
            source: "warning.svg"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Text {
            id: textMsg
            text: msg
            wrapMode: Text.WordWrap
            fontSizeMode: Text.Fit
            font {
                family: "Montserrat"
                pointSize: 12

            }
            color: "#444f63"
            Layout.maximumWidth: 200
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
    }


}
