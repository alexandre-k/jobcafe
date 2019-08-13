import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtWebView 1.1
import QtWebEngine 1.8

Page {
    id: myFilesForm

    property string website
    property alias webView: webView


    WebEngineView {
        id: webView
        anchors.fill: parent
        url: website
        profile: WebEngineProfile {
            httpUserAgent: "Android Browser"
        }
    }
}
