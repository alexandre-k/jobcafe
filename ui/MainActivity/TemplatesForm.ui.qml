// Duplicate of MyFiles. Update when specifications are clarified
import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtWebView 1.1
import QtQuick.Window 2.3
import QtGraphicalEffects 1.0
import "../BackButton"

Page {
    id: myFilesForm

    property alias search: search
    property alias searchBar: searchBar

    header: ColumnLayout {
        BackButton {
            Layout.margins: 20
        }

        Text {
            id: aboutTitle
            width: parent.width
            text: qsTr("Templates")
            color: "#444f63"
            font {
                pointSize: 24
                bold: true
                family: "Montserrat"
            }
            Layout.leftMargin: 30
        }
    }

    ColumnLayout {
        width: root.width

        TextField {
            id: searchBar
            Layout.preferredHeight: 60
            Layout.preferredWidth: root.width - 50
            Layout.margins: 20
            antialiasing: true
            leftPadding: 10
            rightPadding: 70
            background: Rectangle {
                id: searchBarBorder
                radius: 5
                color: "#eee"
                border {
                    color: "black"
                }
                layer.enabled: true
                layer.effect:
                    DropShadow {
                        id: effect
                        anchors.fill: searchBarBorder
                        radius: 8
                        spread: 0.2
                        color: "#444f63"
                    }
            }

            Text {
                text: "Search your templates here..."
                anchors.top: searchBar.top
                anchors.left: searchBar.left
                anchors.margins: 20
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                visible: !searchBar.text && !searchBar.activeFocus
                font {
                    family: "Lato"
                    pointSize: 12
                }
                color: "#515253"
            }

            Image {
                source: "images/search.svg"
                anchors.top: searchBar.top
                anchors.right: searchBar.right
                anchors.rightMargin: 25
                anchors.topMargin: 15
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    id: search
                    anchors.fill: parent
                }
            }

        }

        Rectangle { color: "transparent"; height: 100 }

        Text {
            text: "Google"
            font {
                family: "Lato"
                pointSize: 30
                bold: true
            }
            color: "#515253"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        }
    }
}
