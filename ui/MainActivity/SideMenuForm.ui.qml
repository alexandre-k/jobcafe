import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Page {
    id: sideMenu

    property alias profileFullName: profileFullName
    property alias profilePicture: profilePicture
    property alias closeMenu: closeMenu
    property alias closeMenuClickableArea: closeMenuClickableArea
    property alias membership: membership
    property alias profile: profile
    property alias payment: payment
    property alias support: support
    property alias settings: settings
    property alias aboutUs: aboutUs
    property alias logoutClickableArea: logoutClickableArea
    property alias aboutUsClickableArea: aboutUsClickableArea
    property int leftShift: -50
    property int rightShift: 70

    Rectangle {
        anchors.left: parent.left
        anchors.leftMargin:  leftShift
        height: 680
        width: 370
        radius: 50
        color: "#dfe2e8"

        ColumnLayout {
            spacing: 5
            width: parent.width

            Rectangle { height: 5 }
            RowLayout {
                Layout.leftMargin: rightShift

                Item {
                    Layout.margins: 20

                    Rectangle {
                        id: frame
                        width: 60
                        height: 60
                        radius: 10
                        visible: false

                    }

                    Image {
                        id: profilePicture
                        source: "images/profile_picture.png"
                        width: 60
                        height: 60
                        fillMode: Image.PreserveAspectCrop
                        sourceSize: Qt.size(parent.width, parent.height)
                        smooth: true
                        visible: true
                        layer.enabled: true
                        layer.effect: OpacityMask {
                            maskSource: frame
                        }
                    }
                }

                Rectangle { width: 200 }

                Image {
                    id: closeMenu
                    source: "images/menu_activated.svg"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        id: closeMenuClickableArea
                        anchors.fill: parent
                    }
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 20
                }
            }

            Text {
                id: profileFullName
                text: root.state.user.fullName
                font {
                    family: "Montserrat"
                    bold: true
                    pointSize: 22
                }
                color: "#444f63"
                Layout.leftMargin: rightShift + 20
                Layout.topMargin: 50
            }

            Text {
                id: membership
                text: root.state.user.membership? root.state.user.membership.label : "No membership"
                font {
                    family: "Montserrat"
                    pointSize: 12
                }
                color: "#444f63"
                opacity: 0.56
                Layout.leftMargin: rightShift + 20

            }

            Rectangle { height: 50 }

            SideMenuElement {
                id: home
                label: "Home"
                image: "images/home.png"
                Layout.leftMargin: rightShift
            }

            SideMenuElement {
                id: profile
                label: "Edit profile"
                image: "images/profile.png"
                Layout.leftMargin: rightShift
            }

            SideMenuElement {
                id: payment
                label: "Payment plan"
                image: "images/payment.svg"
                Layout.leftMargin: rightShift
            }
            SideMenuElement {
                id: support
                label: "Support"
                image: "images/support.png"
                Layout.leftMargin: rightShift
            }
            SideMenuElement {
                id: settings
                label: "Settings"
                image: "images/settings.png"
                Layout.leftMargin: rightShift
            }

            Rectangle { height: 30 }

            Text {
                id: aboutUs
                text: "About Us"
                color: "#444f63"
                font {
                    family: "Montserrat"
                    pointSize: 12
                }
                MouseArea {
                    id: aboutUsClickableArea
                    anchors.fill: parent
                }
                Layout.leftMargin: rightShift
            }

            Rectangle { height: 40 }

            Item {
                id: logout
                width: 10
                height: 10
                Layout.leftMargin: rightShift

                RowLayout {

                    Image {
                        source: "images/logout.svg"
                        Layout.alignment: Qt.AlignLeft
                    }
                    Text {

                        text: "Log Out"
                        font {
                            family: "Montserrat"
                            pointSize: 12
                        }
                        color: "#1677cb"
                        Layout.alignment: Qt.AlignRight
                    }
                }

                MouseArea {
                    id: logoutClickableArea
                    anchors.fill: parent
                }
            }

            Rectangle { height: 50 }

            Text {
                id: appVersion
                text: "Version 1.0 beta-2"
                Layout.leftMargin: rightShift
            }
        }
    }
}
