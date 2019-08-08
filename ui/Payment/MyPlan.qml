import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
    id: myPlan
    anchors.fill: parent

    ColumnLayout {

        spacing: 5

        BackButton { Layout.margins: 20 }

        Text {
            text: "Payment plan"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 22
            }
            color: "#444f63"
        }

        Rectangle {
            width: 380
            height: 200
            Layout.alignment: Qt.AlignHCenter
            Layout.margins: 15

            ColumnLayout {
                anchors.fill: parent

                Text {
                    text: "Cart (1 item)"
                    font {
                        family: "Titillium Web"
                        bold: true
                        underline: true
                    }
                    color: "#032f3e"
                    Layout.topMargin: 20
                    Layout.leftMargin: 10
                }

                RowLayout {

                    Text {
                        text: "Total"
                        font {
                            family: "Titillium Web"
                            bold: true
                            underline: true
                        }
                        color: "#032f3e"
                        Layout.leftMargin: 10
                    }

                    Text {
                        text: "A$99.99"
                        font {
                            family: "Titillium Web"
                            bold: true
                            underline: true
                        }
                        color: "#032f3e"
                        Layout.alignment: Qt.AlignRight
                    }
                }

                Button {
                    id: checkout
                    Material.background: Material.Blue
                    text: "Process to Checkout"
                    contentItem: Text {
                        text: checkout.text
                        font {
                            family: "Titillium Web"
                            bold: true
                            underline: true
                        }
                        color: "white"
                    }
                    onClicked: stack.push("qrc:/ui/Login/Login.qml")
                    Layout.alignment: Qt.AlignCenter
                }

                Rectangle {
                    id: line
                    height: 2
                    width: 360
                    color: "black"
                    Layout.margins: 10
                }

                RowLayout {
                    Text {
                        id: planReview
                        text: "Premium Plan jjjjjj"
                        Layout.leftMargin: 10
                    }

                    Rectangle {

                        Text {
                            text: "A$99.99"
                            color: "#fff"
                        }
                        color: "#286398"
                        Layout.alignment: Qt.AlignRight
                    }

                    Text {
                        text: "Remove"
                        font {
                            family: "Titillium Web"
                            underline: true
                        }
                        color: "#2699fb"
                        Layout.alignment: Qt.AlignRight
                    }
                }
            }
        }
    }
}
