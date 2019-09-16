import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import download 1.0

HomeForm {

    menuArea.onClicked: drawer.open()

    Drawer {
        id: drawer
        width: parent.width * 1 / 4
        height: parent.height
        background: null

        SideMenu {
            id: sideMenu
            drawer: drawer
        }
    }

    Connections {
        target: download
        onSaved: {
            sideMenu.profilePicture.source = "file://" + root.appDir + "/profile_picture.png"
            console.log("Reloaded source ", sideMenu.profilePicture.source)
        }
    }

    Component.onCompleted: {
        download.start();
    }

    Download {
        id: download
        url: root.state.user.profilePicture
        destination: root.appDir + "/profile_picture.png"
    }

    followArea.onClicked: {
        followDialog.open()
    }

    Follow { id: followDialog }
}
