import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    anchors.fill: parent
    anchors.margins: 20
    anchors.bottomMargin: 200
    header: ColumnLayout {
            id: headerCol
            width: parent.width
               Image {
                   source: "/images/arrow-left258.svg"
               }
               Text {
                    text: qsTr("Enter your email address.")
                    color: "#454f63"
                    font {
                        family: "Lato"
                        pointSize: 20
                    }
                }
        }

        TextField {
            anchors.top: headerCol.bottom
            width: parent.width
            anchors.margins: 20
            color: "#7f7f7f"
            font {
                family: "Montserrat"
                pointSize: 16

            }

            placeholderText: "Email address"
        }

    footer: Button {
            text: "Send verification code"
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
        }
}
