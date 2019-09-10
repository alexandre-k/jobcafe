import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3
import "../Utils.js" as Utils

Page {
    id: homeForm

    property alias menu: menu
    property alias menuArea: menuArea
    property alias followArea: followArea
    header: RowLayout {
        Rectangle {
            width: 40
            height: 40
            color: "transparent"
            Image {
                id: menu
                source: "images/menu.svg"
            }
            MouseArea {
                id: menuArea
                anchors.fill: parent
            }
            Layout.topMargin: 20
            Layout.leftMargin: 20
        }

        Text {
            // TODO remove anchors, replace with Layout
            text: "Jjjjjjjjjjjjjj"
            font {
                family: "Magnolia Script"
                pointSize: 18
            }
            color: "#032f3e"
        }
    }

    Canvas {
        id: frame

        width: root.width
        height: root.height

        onPaint: {

            const ctx = getContext("2d")

            ctx.lineWidth = 4

            ctx.fillStyle = "#dfe2e8"

            Utils.drawRec(ctx, 20, 20, root.width - 30, root.height - 200, 100)

            ctx.fill()

        }

        ColumnLayout {

            spacing: 10
            width: root.width - 30

            RowLayout {
                Rectangle { height: 10; color: "transparent" }

                Text {
                    id: welcomeMessage
                    text: qsTr("Welcome Back,\n" + root.state.user.firstName)
                    color: "#241332"
                    font {
                        family: "Montserrat"
                        bold: true
                        pointSize: 18
                    }
                    Layout.leftMargin: 40
                    Layout.topMargin: 30
                }

                Rectangle {
                    color: "transparent"
                    Layout.fillWidth: true
                }

                Canvas {
                    width: 100
                    height: 40
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.topMargin: 20
                    Layout.rightMargin: 60
                    onPaint: {

                        const ctx = getContext("2d")

                        ctx.lineWidth = 4

                        ctx.fillStyle = "#8a56ac"

                        Utils.drawRec(ctx, 0, 0, 100, 40, 35)

                        ctx.fill()

                    }

                    Text {
                        anchors.centerIn: parent
                        text: "Follow"
                        font {
                            family: "Montserrat"
                            pointSize: 10
                            capitalization: Font.AllUppercase
                            bold: true
                        }

                        color: "#fff"
                    }

                    MouseArea {
                        id: followArea
                        anchors.fill: parent
                    }
                }
//                Rectangle {
//                    id: follow

//                    width: 100
//                    height: 50
//                    color: "#8a56ac"
//                    Layout.topMargin: 30


//                }
            }


            ListView {
                id: view
                height: 500
                spacing: 15
                width: 380
                Layout.leftMargin: 40
                orientation: ListView.Vertical
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
                delegate: Rectangle {
                    id: cell
                    height: 110
                    width: root.width - 70
                    color: "#eceff0"
                    radius: 20

                    RowLayout {
                        width: parent.width
                        spacing: 0
                        Image {
                            fillMode: Image.PreserveAspectFit
                            source: image
                            Layout.margins: 5
                            Layout.leftMargin: 10
                        }

                        Text {
                            Layout.alignment: Text.AlignHCenter
                            horizontalAlignment:  Text.AlignHCenter
                            text: textContents
                            font {
                                family: "Titillium Web"
                                pointSize: 15
                                bold: true
                            }
                            color: "#444f63"
                        }

                        Rectangle {
                            Layout.fillWidth: true
                        }

                        Button {
                            Layout.rightMargin: 15
                            Layout.bottomMargin: 5
                            Layout.topMargin: 60
                            Layout.alignment: Qt.AlignRight | Qt.AlignBottom
                            Layout.preferredWidth: 40
                            Material.background: "#1677cb"
                            Material.foreground: "#fff"
                            icon.source: "images/right_arrow.svg"
                            icon.height: 10
                            icon.width: 10
                        }
                    }
                }
            }
        }
    }
}

