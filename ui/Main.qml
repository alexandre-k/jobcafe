
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
    visible: true
    width: 410
    height: 580
    title: qsTr("Tabs")
    Material.primary: Material.Blue
    Material.accent: Material.Blue




    StackView {
        id: stack
        // initialItem: welcome
        initialItem: login
        anchors.fill: parent
        Home {
            id: home
        }

        Login {
            id: login
            // user: state.user
            // stack: stack
            // home: home
        }
        Welcome {
            id: welcome
            // stack: stack
            // login: login

        }


    }
//    Home {}


//    AppState {
//        id: state
//    }

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
