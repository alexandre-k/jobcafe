import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    property alias verificationCode: verificationCode
    property alias verify: verify
    property alias sendCodeAgainArea: sendCodeAgainArea

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
                pointSize: 14
            }
            color: "#454f63"
            Layout.alignment: Qt.AlignCenter
        }

        Text {
            text: "We have sent a verification code to your email address. Enter the verification code below."
            font {
                family: "Open Sans"
                pointSize: 12
            }
            color: "#454f63"
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 20
        }

        TextField {
            id: verificationCode
            horizontalAlignment: TextInput.AlignHCenter
            inputMethodHints: Qt.ImhPreferNumbers
            maximumLength: 4
            background: Rectangle {
                radius: 7
                color: "#ffffff"
                border.color: verificationCode.focus ? "#3497fd" : "transparent"

                Text {
                    anchors.centerIn: parent
                    text: verificationCode.focus || verificationCode.text ? "" : qsTr("Verification code")
                    font {
                        family: "Lato"
                        pointSize: 14
                        bold: true
                        letterSpacing: 1
                    }

                    color: "#454f63"
                }
            }

            Layout.alignment: Qt.AlignCenter || Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.leftMargin: 50
            Layout.rightMargin: 50
        }

        Text {
            id: sendCodeAgain
            text: "Send Code Again"
            font {
                family: "Gibson"
                underline: true
            }
            color: "#3497fd"

            MouseArea {
                id: sendCodeAgainArea
                anchors.fill: parent
            }
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 30
        }

        NextButton {
            id: verify
            btext: qsTr("Verify")
            Layout.alignment: Qt.AlignRight
        }
    }

}
