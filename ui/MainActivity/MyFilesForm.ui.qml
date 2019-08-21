import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtWebView 1.1

Page {
    id: myFilesForm

    property string website
    property alias webView: webView


    WebView {
        id: webView
        anchors.fill: parent
        url: website
    }
}
