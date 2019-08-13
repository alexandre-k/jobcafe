// Duplicate of MyFiles. Update when specifications are clarified
import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtWebEngine 1.8


TemplatesForm {
    website: "https://get.google.com/apptips/apps/#!/all"
    Component.onCompleted: {
        console.log("URL", webView.url)
    }

    webView.onLoadingChanged: {
        console.log("Loaded")
    }
}

