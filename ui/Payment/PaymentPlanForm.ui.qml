import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {

    property alias basicArea: basicArea
    property alias standardArea: standardArea
    property alias premiumArea: premiumArea
    property alias basic: basic
    property alias standard: standard
    property alias premium: premium
    anchors.fill: parent

    ColumnLayout {

        BackButton {
            Layout.margins: 20
        }

        RowLayout {
            Text {
                text: "Payment plan"
                font {
                    family: "Montserrat"
                    bold: true
                    pointSize: 16
                }
                color: "#444f63"
                Layout.margins: 10
                Layout.leftMargin: 40
                Layout.fillWidth: true
            }

            Image {
                source: "cart.svg"
                Layout.margins: 10
                Layout.rightMargin: 20
            }
        }

        RowLayout {

            Image {
                id: basic

                fillMode: Image.PreserveAspectFit
                source: "basic.png"
                visible: true
                Layout.maximumWidth: 100
                Layout.leftMargin: 20
                MouseArea {
                    id: basicArea
                    anchors.fill: parent
                }
            }
            Image {
                id: standard

                fillMode: Image.PreserveAspectFit
                source: "standard.png"
                visible: true
                Layout.maximumWidth: 150
                MouseArea {
                    id: standardArea
                    anchors.fill: parent
                }
            }
            Image {
                id: premium
                fillMode: Image.PreserveAspectFit
                source: "premium.png"
                visible: true
                Layout.maximumWidth: 100
                MouseArea {
                    id: premiumArea
                    anchors.fill: parent
                }
            }
        }
    }
}
















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
