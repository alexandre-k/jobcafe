import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

TextField {

    property string name
    property string image
    property bool optional: false
    property bool editable: true
    id: entry
    leftPadding: 35
    readOnly: true
    placeholderText: name
    onEditingFinished: {
        if (editable) {
            edit.visible = !edit.visible
            entry.readOnly = !entry.readOnly
        }
    }

    passwordCharacter: '・'

    background: Rectangle {
        id: entryBackground
        width: parent.width
        height: parent.height
        color: "transparent"
        onFocusChanged: {
            if (editable) {
                edit.visible = !edit.visible
                entry.readOnly = !entry.readOnly
            }
        }
        Rectangle {
            id: line
            width: parent.width
            height: 1
            anchors.bottom: parent.bottom
            color: entry.readOnly ? "#b4b4b4" : "#41aaff"
        }

        Rectangle {
            height: edit.implicitHeight + 20
            width: edit.implicitWidth + 20
            anchors.right: parent.right
            color: "transparent"
            anchors.top: parent.top
            anchors.topMargin: 10

            Text {
                id: edit
                text: "Edit"
                font {
                    family: "Lato"
                    pointSize: 12
                }
                color: "#000"
                anchors.right: parent.right
                visible: editable
            }

            Text {
                visible: optional
                text: "Optional*"
                anchors.right: parent.right
                anchors.top: parent.bottom
                anchors.topMargin: 5
                font {
                    family: "Lato"
                    pointSize: 8
                }
                color: "#000"

            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (editable) {
                        entry.readOnly = false
                        entry.focus = true
                        edit.visible = false
                    }
                }
            }
        }
    }

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
