import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

ColumnLayout {

    Rectangle {
        height: 90
        width: 410
        color: "#dfe2e8"
        border.color: "white"
        border.width: 1
        MouseArea {
            anchors.fill: parent
            onClicked: {
                stack.push("qrc:/ui/Support/SupportMessaging.qml", {
                    ticketId: id,
                    ticketTitle: title,
                    ticketOwner: owner.email,
                    ticketStatus: status
                })
            }
        }

        ColumnLayout {
            RowLayout {
                Text {
                    text: owner.email
                    Layout.leftMargin: 20
                    Layout.minimumWidth: 280
                    Layout.fillWidth: true
                    font {
                        family: "Source Sans Pro"
                        bold: true
                        pointSize: 12
                    }
                    color: "#4d4f5c"
                }

                Text {
                    text: createdDate
                    Layout.alignment: Qt.AlignRight
                    font {
                        family: "Source Sans Pro"
                    }
                    color: "#43425d"
                }
            }

            Text {
                text: title
                Layout.leftMargin: 20
                font {
                    family: "Source Sans Pro"
                    pointSize: 12
                }
                color: "#43425d"
            }
        }
    }
}
