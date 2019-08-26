import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

HomeForm {

    menuArea.onClicked: drawer.open()

    Drawer {
        id: drawer
        width: parent.width * 1 / 4
        height: parent.height
        background: null

        SideMenu {
            drawer: drawer
        }
    }

    followArea.onClicked: {
        followDialog.open()
    }

    Follow { id: followDialog }


}
