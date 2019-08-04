
import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import "./About"
import "./MainActivity"
import "./Login"
import "./Profile"
import "./Setting"
import "./Support"
import "./AppState"
import "./Introduction"

ApplicationWindow {
    id: root
    visible: true
    width: 410
    height: 580
    title: qsTr("Tabs")
    Material.primary: Material.Blue
    Material.accent: Material.Blue

    property var stack: stackView
    property var state: state

    AppState {
        id: state
    }

    StackView {
        id: stackView
        // initialItem: welcome
        initialItem: Home
        anchors.fill: parent

        Home {
            id: home
        }


//            Profile {

//                id: profile

//            }

//        Login {
//            id: login
//        }
        Welcome {
            id: welcome

        }


    }
//    Home {}



//    Profile {
//        user: state.user;

//    }
//    Settings {
//        user: state.user;
//    }
//    Support {
//        user: state.user;
//    }
}
