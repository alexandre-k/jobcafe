import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: homeForm
    property alias menu: menu
    property alias menuArea: menuArea
    property alias follow: follow
    header: RowLayout {
        Image {
            id: menu
            source: "images/menu.svg"
            Layout.margins: 10
            MouseArea {
                id: menuArea
                anchors.fill: parent
            }
        }

        Text {
            // TODO remove anchors, replace with Layout
            anchors.centerIn: parent
            text: "Jjjjjjjjjjjjjj"
            font {
                family: "Magnolia Script"
                pointSize: 14
            }
            color: "#032f3e"
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
                RowLayout {
                    spacing: 100
                    Text {
                        id: welcomeMessage
                        text: qsTr("Welcome Back,\n" + root.state.user.firstName)
                        color: "#241332"
                        font {
                            family: "Montserrat"
                            bold: true
                            pointSize: 13
                        }
                    }

                    Button {
                        id: follow
                        text: "Follow"
                        Material.background: Material.Purple
                        Material.foreground: "#ffffff"
                    }
                }

                ListView {
                    id: view
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
                        RowLayout {
                            anchors.fill: parent

                            spacing: 2
                            Image {
                                fillMode: Image.PreserveAspectFit
                                source: image
                                scale: .7
                            }

                            Text {
                                Layout.alignment: Text.AlignHCenter
                                horizontalAlignment:  Text.AlignHCenter
                                text: textContents
                                font {
                                    family: "Titillium Web"
                                    pointSize: 10
                                    bold: true
                                }
                                color: "#444f63"
                            }

                            Button {
                                Layout.rightMargin: 15
                                Layout.bottomMargin: 5
                                Layout.alignment: Qt.AlignRight | Qt.AlignBottom
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

}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
