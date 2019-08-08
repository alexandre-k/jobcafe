import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "../BackButton"

Page {
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
            width: parent.width * 3 / 4
            height: parent.height / 2

            Text {
                text: "Cart (1 item)"
                font {
                    family: "Titillium Web"
                    bold: true
                    underline: true
                }
                color: "#032f3e"
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
                }

                Text {
                    text: "A$99.99"
                    font {
                        family: "Titillium Web"
                        bold: true
                        underline: true
                    }
                    color: "#032f3e"
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
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                height: 70
                onClicked: stack.push("qrc:/ui/Login/Login.qml")
            }

            Rectangle {
                id: line
                height: 2
                width: 100
            }

            RowLayout {
                Text {
                    id: planReview
                    text: "Premium Plan jjjjjj"
                }

                Rectangle {

                    Text {
                        text: "A$99.99"
                        color: "#fff"
                    }
                    color: "#286398"
                }

                Text {
                    text: "Remove"
                    font {
                        family: "Titillium Web"
                        underline: true
                    }
                    color: "#2699fb"
                }
            }
        }
    }
}
