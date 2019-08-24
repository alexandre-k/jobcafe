import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    property alias password: password
    property alias confirmedPassword: confirmedPassword
    property alias submit: submit


    ColumnLayout {
        width: parent.width

        BackButton {
            Layout.margins: 10
        }

        Text {
             text: qsTr("Enter your new password")
             color: "#454f63"
             font {
                 family: "Lato"
                 pointSize: 17
             }
             Layout.alignment: Qt.AlignCenter
             Layout.margins: 20
             Layout.bottomMargin: 40
         }

        TextField {
            id: password
            color: "#7f7f7f"
            font {
                family: "Montserrat"
                pointSize: 16

            }
            placeholderText: "Password"
            echoMode: TextInput.Password
            Layout.alignment: Qt.AlignCenter
            Layout.minimumWidth: 300
            Layout.bottomMargin: 20
        }

        TextField {
            id: confirmedPassword
            color: "#7f7f7f"
            font {
                family: "Montserrat"
                pointSize: 16

            }
            placeholderText: "Confirm password"
            echoMode: TextInput.Password
            Layout.alignment: Qt.AlignCenter
            Layout.minimumWidth: 300
            Layout.bottomMargin: 20
        }

        NextButton {
            id: submit
            btext: "Submit"
            Layout.alignment: Qt.AlignRight
            Layout.topMargin: 40
        }
    }
}
