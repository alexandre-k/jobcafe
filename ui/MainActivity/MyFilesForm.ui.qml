import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtWebView 1.1
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
            width: parent.width
            text: qsTr("My files")
            color: "#444f63"
            font {
                pointSize: 24
                bold: true
                family: "Montserrat"
            }
            Layout.leftMargin: 30
            Layout.bottomMargin: 20
        }

        TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            Layout.minimumWidth: root.width - 30

            TabButton {
                text: qsTr("MMMMMMM")
                font {
                    family: "Europa"
                    bold: true
                }
            }

            TabButton {
                text: qsTr("MMMMMMM")
                font {
                    family: "Europa"
                    bold: true
                }
            }

            TabButton {
                text: qsTr("MMMMMMM")
                font {
                    family: "Europa"
                    bold: true
                }
            }
        }
    }

    SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
        anchors.fill: parent

        Page {
            Text {
                anchors.centerIn: parent
                text: "Google"
                font {
                    family: "Lato"
                    pointSize: 30
                    letterSpacing: 1
                    bold: true
                }
                color: "#515253"
            }
        }

        Page {
            Text {
                anchors.centerIn: parent
                text: "Google"
                font {
                    family: "Lato"
                    pointSize: 30
                    letterSpacing: 1
                    bold: true
                }
                color: "#515253"
            }
        }

        Page {
            Text {
                anchors.centerIn: parent
                text: "Google"
                font {
                    family: "Lato"
                    pointSize: 30
                    letterSpacing: 1
                    bold: true
                }
                color: "#515253"
            }
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
