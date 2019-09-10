// Duplicate of MyFiles. Update when specifications are clarified
import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtWebView 1.1


TemplatesForm {

    search.onClicked: {
       onClicked: Qt.openUrlExternally("https://google.com")
    }
}

