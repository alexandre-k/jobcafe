import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3

ColumnLayout {
    anchors.fill: parent
    anchors.margins: 50

    Text {
        text: "Your privacy is important to us."
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
    }

    Text {
        text: "We have sent a verification code to your email address. Enter the verification code below."
    }

    TextField {
        id: email
        Layout.fillWidth: true
        placeholderText: "Verification code"
    }

    Text {
        textFormat: Text.RichText
        text: "<a>Send Code Again</a>"
    }

    Button {
        id: next
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        text: qsTr("Verify")
    }
}

