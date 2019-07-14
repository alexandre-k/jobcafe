import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: homeForm
    property alias menu: menu
    property alias menuArea: menuArea
    anchors.margins: 20
    anchors.fill: parent
    header: Row {
        Image {
            id: menu
            source: "images/menu.svg"
            MouseArea {
                id: menuArea
                anchors.fill: parent
            }
        }

        Text {
            anchors.centerIn: parent
            text: "Jjjjjjjjjjjjjj"
        }
    }

    Rectangle {
        id: backgroundColor
        anchors.fill: parent
        anchors.margins: 10
        color: "#dfe2e8"
        radius: 80
        Item {
            anchors.fill: parent
            anchors.margins: 30

            ColumnLayout {
                spacing: 10
                Row {
                    spacing: 100
                    Text {
                        id: welcomeMessage
                        text: qsTr("Welcome Back,\nJohn")
                        horizontalAlignment: Text.AlignLeft
                        color: "#241332"
                        font {
                            family: "Montserrat"
                            bold: true
                            pointSize: 13
                        }
                    }

                    Button {
                        text: "Follow"
                    }
                }

                ListView {
                    id: view
                    // anchors.fill: parent
                    height: 500
                    spacing: 10
                    width: backgroundColor.width
                    orientation: ListView.Vertical
                    delegate: Rectangle {
                        id: cell
                        height: 100
                        width: backgroundColor.width * 5 / 6
                        color: "#eceff0"
                        radius: 20
                        Row {

                            spacing: 2
                            Image {
                                fillMode: Image.PreserveAspectFit
                                source: image
                                scale: .7
                            }

                            Text {
                                Layout.alignment: Text.AlignHCenter
                                text: textContents
                            }

                            Button {
                                Layout.alignment: Qt.AlignBottom
                                Material.background: Material.Blue
                                Material.foreground: "#ffffff"
                                icon.source: "images/right_arrow.svg"
                            }
                        }
                    }

                    model: ListModel {
                        ListElement {
                            textContents: "Gggggggggg\nGGggggggggggg"
                            image: "images/Group_1854.svg"
                        }
                        ListElement {
                            textContents: "Gggggggggg\nGGggggggggggg"
                            image: "images/Group_1855.svg"
                        }
                        ListElement {
                            textContents: "Gggggggggg\nGGggggggggggg"
                            image: "images/Group_1856.svg"
                        }
                        ListElement {
                            textContents: "Gggggggggg\nGGggggggggggg"
                            image: "images/Group_1857.svg"
                        }
                    }
                }
            }
        }
    }

    footer: TabBar {
        TabButton {
            ColumnLayout {
                Image {
                    source: "images/home.svg"
                }
                Label {
                    text: qsTr("Home")
                }
            }
        }

        TabButton {
            ColumnLayout {
                Image {
                    source: "images/my_files.svg"
                }
                Label {
                    text: qsTr("My Files")
                }
            }
        }

        TabButton {
            ColumnLayout {
                Image {
                    source: "images/templates.svg"
                }
                Label {
                    text: qsTr("Templates")
                }
            }
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
