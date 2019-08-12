import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Column {

    // anchors.fill: parent
    anchors.right: author.email === root.state.user.email ? undefined : parent.right
    Row {

        Column {
            spacing: 10
            Text {
                anchors.right: parent.right
                anchors.rightMargin: 50
                text: createdDate
                color: "#78849e"
                opacity: 0.56
                font {
                    family: "Gibson"
                }
            }

            Rectangle {
                id: summary
                height: msg.implicitHeight + 40
                width: view.width * 3/4
                color: author.email === root.state.user.email ? "white" : "#dfe2e8"
                border.color: "#eceff0"
                border.width: 10
                radius: 20
                Text {
                    id: msg
                    anchors.centerIn: parent
                    width: parent.width * 3/4
                    text: content
                    color: "#444f63"
                    font {
                        family: "Gibson"
                    }

                    fontSizeMode: Text.Fit
                    wrapMode: Text.WordWrap
                }
            }
        }
    }
}
