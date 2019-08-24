import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    id: myPlan
    ColumnLayout {
        anchors.fill: parent
        Text {
            anchors.centerIn: parent
            text: "My plan"
        }
    }
}
