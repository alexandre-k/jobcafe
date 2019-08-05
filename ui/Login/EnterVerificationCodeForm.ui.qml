import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import "../BackButton"

Page {

    ColumnLayout {
        width: parent.width
        height: parent.height / 2

        BackButton {
            Layout.margins: 20
        }

        Text {
            text: "Your privacy is important to us."
            font {
                family: "Lato"
                pointSize: 18
            }
            color: "#454f63"
            Layout.alignment: Qt.AlignCenter
        }

        Text {
            text: "We have sent a verification code to your email address. Enter the verification code below."
            font {
                family: "Open Sans"
                pointSize: 14
            }
            color: "#454f63"
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 20
        }

        TextField {
            id: verificationCode
            placeholderText: "Verification code"
            font {
                family: "Lato"
                pointSize: 14
                bold: true
            }
            color: "#454f63"
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 20
        }

        Text {
            id: sendCodeAgain
            textFormat: Text.RichText
            text: "<a>Send Code Again</a>"
            font {
                family: "Gibson"
            }
            color: "#3497fd"

            MouseArea {
                anchors.fill: parent
            }
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 30
        }

        Button {
            id: verify
            text: qsTr("Verify")
            Material.background: Material.Blue
            Material.foreground: "#ffffff"
            Layout.alignment: Qt.AlignRight
        }
    }

}
