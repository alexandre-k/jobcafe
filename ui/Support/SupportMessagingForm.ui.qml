import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: ticketsOverview
    anchors.fill: parent

    ListView {
        id: view
        anchors.fill: parent
        orientation: ListView.Vertical
        Component.onCompleted: positionViewAtEnd()
        model: ListModel {
            id: data
            ListElement {
                userName: "John Doe"
                message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                sentAt: "January 1st"
            }
            ListElement {
                userName: "user"
                message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit egestas dui id ornare arcu odio. Elementum eu facilisis sed odio."
                sentAt: "March 2nd"
            }
            ListElement {
                userName: "John Doe"
                message: "Lorem ipsum dolorsit amet..."
                sentAt: "June 28th"
            }
            ListElement {
                userName: "user"
                message: "Lorem ipsum dolorsit amet..."
                sentAt: "Novermber 13th"
            }
        }

        delegate:
            Column {
            anchors.fill: view
            anchors.right: userName == 'user' ? undefined : parent.right
            Row {

                Column {
                    spacing: 10
                    Text {
                        anchors.right: parent.right
                        anchors.rightMargin: 50
                        text: sentAt
                        color: "#78849e"
                        opacity: 0.56
                        font {
                            family: "Gibson"
                        }
                    }

                    Rectangle {
                        id: summary
                        height: msg.implicitHeight + 40
                        width: view.width * 3/4
                        color: userName == 'user' ? "white" : "#dfe2e8"
                        border.color: "#eceff0"
                        border.width: 10
                        radius: 20
                        Text {
                            id: msg
                            anchors.centerIn: parent
                            width: parent.width * 3/4
                            text: message
                            color: "#444f63"
                            font {
                                family: "Gibson"
                            }

                            fontSizeMode: Text.Fit
                            wrapMode: Text.WordWrap
                        }
                    }
                }
            }
        }

        footer:
            Column {
                Rectangle {
                    color: "#fff"
                    width: ticketsOverview.width * 3/4
                    height: 50
                    radius: 12

                    TextEdit {
                        id: newMessage
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                        text: qsTr("Say something...")
                        color: "#78849e"
                        font {
                            family: "Gibson"
                        }
                    }
                }

                Button {
                    Material.background: Material.Blue
                    Material.foreground: "#ffffff"
                    text: qsTr("Close ticket")
                }
            }

        }
}
