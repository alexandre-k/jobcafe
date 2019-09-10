import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    property alias backButton: backButton
    property alias emailAddress: emailAddress
    property alias sendVerificationCode: sendVerificationCode

    ColumnLayout {
        width: parent.width
        height: parent.height / 2

        BackButton {
            id: backButton
            Layout.margins: 20
        }

        Text {
            id: element
            text: qsTr("Enter your email address.")
            color: "#454f63"
            font {
                family: "Lato"
                pointSize: 20
            }
            Layout.alignment: Qt.AlignCenter
        }

        TextField {
            id: emailAddress
            color: "#7f7f7f"
            font {
                family: "Montserrat"
                pointSize: 16
            }
            placeholderText: "Email address"
            Layout.alignment: Qt.AlignCenter
            Layout.minimumWidth: 300
            inputMethodHints: Qt.ImhEmailCharactersOnly
        }

        NextButton {
            id: sendVerificationCode
            btext: "Send verification code"
            Layout.alignment: Qt.AlignRight
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
