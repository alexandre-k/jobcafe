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

//    property string website
//    property alias webView: webView
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

        RectangularGlow {
            id: effect
            anchors.fill: searchBar
            glowRadius: 5
            spread: 0.2
            color: "#444f63"
            cornerRadius: searchBar.radius + glowRadius
        }

        Rectangle {
            id: searchBar
            height: 60
            Layout.preferredWidth: root.width - 50
            Layout.margins: 20
            radius: 5
            antialiasing: true
            color: "#eee"

            border {
                color: Qt.rgba(0, 0, 0, 0.01)
                width: 1
            }

            RowLayout {

                Text {
                    text: "Search your templates here..."
                    Layout.margins: 20
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    font {
                        family: "Lato"
                        pointSize: 12
                    }
                    color: "#515253"
                }

                TextInput {
                    anchors.fill: parent
                    selectByMouse: true
                }

                Rectangle { width: 50 }

                Image {
                    // <div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/"             title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"             title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
                    source: "images/search.svg"
                    Layout.preferredHeight: 25
                    Layout.preferredWidth: 25
                    Layout.alignment: Qt.AlignRight
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        id: search
                        anchors.fill: parent
                        onClicked: console.log("Search")
                    }
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
