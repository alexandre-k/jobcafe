import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Dialog {
    id: followDialog
    clip: true
    width: 250
    height: 200
    implicitWidth: facebook.width * 3
    modal: true
    x: Math.round((parent.width - width) / 2)
    y: Math.round((parent.height + height) / 2)
    parent: Overlay.overlay
    contentItem: Rectangle {
        width: 260
        height: 200
        radius: 10

        ColumnLayout {

            Text {
                font {
                    family: "Lato"
                    pointSize: 13
                }
                color: "#8f8f8f"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: "Follow our social channels"
            }

            Rectangle {
                width: 200
                height: 1
                color: "black"
                Layout.topMargin: 10
                Layout.bottomMargin: 10
            }

            RowLayout {
                spacing: 30
                Image {

                    fillMode: Image.PreserveAspectFit
                    Layout.maximumHeight: 50
                    Layout.maximumWidth: 50
                    // <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/"                 title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"                 title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
                    source: "facebook.svg"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: Qt.openUrlExternally("https://www.facebook.com")
                    }
                }


                Image {

                    fillMode: Image.PreserveAspectFit
                    Layout.maximumHeight: 50
                    Layout.maximumWidth: 50
                    // <div>Icons made by <a href="https://www.flaticon.com/authors/pixel-buddha" title="Pixel Buddha">Pixel Buddha</a> from <a href="https://www.flaticon.com/"                 title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"                 title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
                    source: "instagram.svg"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: Qt.openUrlExternally("https://www.instagram.com")
                    }
                }

                Image {
                    width: 10
                    height: 10
                    fillMode: Image.PreserveAspectFit
                    Layout.maximumHeight: 50
                    Layout.maximumWidth: 50
                    // <div>Icons made by <a href="https://www.flaticon.com/authors/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.com/"                 title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"                 title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
                    source: "twitter.svg"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: Qt.openUrlExternally("https://www.twitter.com")
                    }
                }
            }

            Button {
                id: cancelFollow
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Material.background: Material.Grey
                Material.foreground: "white"
                text: "Cancel"
                onClicked: followDialog.close()
            }
        }
    }
}
