import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: sideMenu
    anchors.fill: parent
    anchors.margins: 20

    property alias profileFullName: profileFullName
    property alias profilePicture: profilePicture
    property alias closeMenu: closeMenu
    property alias membership: membership
    property alias profile: profile
    property alias payment: payment
    property alias support: support
    property alias settings: settings

    header: ColumnLayout {
        spacing: 5

        Row {
            Image {
                id: profilePicture
                source: "/images/profile_picture.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: closeMenu
                source: "images/menu_activated.svg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Text {
            id: profileFullName
            text: "John Doe"
            font {
                family: "Montserrat"
                bold: true
                pointSize: 24
            }
            color: "#444f63"
        }

        Text {
            id: membership
            text: "Basic Membership"
            font {
                family: "Montserrat"
                pointSize: 14
            }
            color: "#444f63"
            opacity: 0.56
        }
    }

    ColumnLayout {
        SideMenuElement {
            id: profile
            label: "Edit profile"
            image: "images/profile.png"
        }

        SideMenuElement {
            id: payment
            label: "Payment plan"
            image: "images/payment.png"
        }
        SideMenuElement {
            id: support
            label: "Support"
            image: "images/support.png"
        }
        SideMenuElement {
            id: settings
            label: "Settings"
            image: "images/settings.png"
        }
    }

    footer: ColumnLayout {
        spacing: 30
        Text {
            text: "About Us"
        }

        Item {
            id: logout
            Image {
                source: "images/logout.svg"
            }
            Text {

                text: "Log Out"
                color: "#1677cb"
            }
        }

        Text {
            id: appVersion
            text: "Version 4.8.15.16.23.42"
        }
    }
}
