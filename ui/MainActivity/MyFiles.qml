import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtWebEngine 1.8


MyFilesForm {
    website: "https://ok-google.io/"
    Component.onCompleted: {
        console.log("URL", webView.url)
    }

    webView.onLoadingChanged: {
        console.log("Loaded")
    }
}
