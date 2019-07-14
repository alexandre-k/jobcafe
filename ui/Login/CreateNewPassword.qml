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
                    text: qsTr("Enter your new password")
                    color: "#454f63"
                    font {
                        family: "Lato"
                        pointSize: 20
                    }
                }
        }

    ColumnLayout {
        anchors.fill: parent



        TextField {
            width: parent.width
            color: "#7f7f7f"
            font {
                family: "Montserrat"
                pointSize: 16

            }

            placeholderText: "Password"
        }

        TextField {
            width: parent.width
            color: "#7f7f7f"
            font {
                family: "Montserrat"
                pointSize: 16

            }

            placeholderText: "Confirm password"
        }
    }



    footer: Button {
            text: "Submit"
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
        }
}
