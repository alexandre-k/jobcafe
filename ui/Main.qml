import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3
import "./About"
import "./MainActivity"
import "./Login"
import "./Payment"
import "./Profile"
import "./Setting"
import "./Support"
import "./AppState"
import "./Introduction"
import "./ErrorMessage"

ApplicationWindow {
    id: root
    visible: true
    width: 410
    height: Screen.height
    title: qsTr("Tabs")
    Material.primary: Material.Blue
    Material.accent: Material.Blue

    property var stack: stackView
    property var state: appState
    property string appDir: appFolder

    AppState {
        id: appState
    }

    StackView {

        id: stackView
        initialItem: splashScreen
        implicitHeight: parent.height
        implicitWidth: parent.width

        SplashScreen { id: splashScreen }

    }
}
