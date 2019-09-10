import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Column {

    Component.onCompleted: {
        if (author.email === root.state.user.email) {
            anchors.right = parent.right
        }
    }

    Row {

        Column {
            spacing: 2
            Text {
                anchors.right: parent.right
                anchors.rightMargin: 40
                text: createdDate
                color: "#78849e"
                opacity: 0.56
                font {
                    family: "Gibson"
                    pointSize: 18
                }
            }

            Rectangle {
                id: summary
                height: msg.implicitHeight + 50
                width: view.width * 3/4
                color: author.email === root.state.user.email ? "white" : "#dfe2e8"
                border.color: "#eceff0"
                border.width: 10
                radius: 30
                Rectangle {
                    anchors.right: author.email === root.state.user.email ? parent.right : parent.left
                    anchors.bottom: parent.top
                    anchors.rightMargin: author.email === root.state.user.email ? -10 : -35
                    anchors.bottomMargin: -35
                    width: 50
                    height: 50
                    radius: 15
                    color: "#eceff0"
                    Item {
                        width: 35
                        height: 35
                        anchors.centerIn: parent

                        Rectangle {
                            id: frame
                            radius: 12
                            clip: true
                            width: parent.width
                            height: parent.height
                            visible: false

                        }

                        Image {
                            source: author.email === root.state.user.email ? "qrc:ui/Support/me.svg" : "qrc:ui/MainActivity/images/profile_picture.png"
                            fillMode: Image.PreserveAspectFit
                            width: parent.width
                            height: parent.height
                            sourceSize: Qt.size(parent.width, parent.height)
                            smooth: true
                            visible: true
                            layer.enabled: true
                            layer.effect: OpacityMask {
                                maskSource: frame
                            }
                        }
                    }
                }

                Text {
                    id: msg
                    anchors.centerIn: parent
                    height: parent.height
                    width: parent.width * 3/4
                    text: content
                    color: "#444f63"
                    font {
                        family: "Gibson"
                        pointSize: 18
                    }

                    fontSizeMode: Text.Fit
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }
    }
}
