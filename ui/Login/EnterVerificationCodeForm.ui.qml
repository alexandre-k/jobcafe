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

        BackButton {}

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
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 20
        }

        TextField {
            id: verificationCode
            inputMethodHints: Qt.ImhPreferNumbers
            maximumLength: 4
            leftPadding: 20
            background: Rectangle {
                radius: 7
                color: "#ffffff"
                border.color: "#3497fd"
            }
            Layout.alignment: Qt.AlignLeft || Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.leftMargin: 50
            Layout.rightMargin: 50
            Rectangle {
                id: fieldsetBackground
                implicitHeight: 4
                implicitWidth: fieldset.width + 5
                color: "white"
                anchors.bottomMargin: 400

                Text {
                    id: fieldset
                    text: "Verification Code"
                    font {
                        family: "Gibson"
                        pointSize: 11
                    }
                    color: "#3497fd"
                    anchors.bottom: fieldsetBackground.top
                    anchors.bottomMargin: -7
                }
                anchors.top: verificationCode.top
                anchors.left: verificationCode.left
                anchors.leftMargin: 15
            }
            Rectangle {
                anchors.top: verificationCode.top
                anchors.right: verificationCode.right
                anchors.rightMargin: 20
                anchors.topMargin: 10
                implicitHeight: clearText.height
                implicitWidth: clearText.width
                color: "transparent"
                Text {
                    id: clearText
                    text: verificationCode.focus && verificationCode.text ? "x" : ""
                    font {
                        family: "Lato"
                        pointSize: 15
                        letterSpacing: 1
                    }
                    color: "#454f63"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: verificationCode.clear()
                }
            }
        }

        Text {
            id: sendCodeAgain
            text: "Send Code Again"
            font {
                family: "Gibson"
                pointSize: 13
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
