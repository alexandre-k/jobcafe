import Qtlabs.settings 1.0

Item {
    id: appConfig
    Settings {
        category: "server"
        property alias ipAddress: 'http://127.0.0.1:80'
    }
}
