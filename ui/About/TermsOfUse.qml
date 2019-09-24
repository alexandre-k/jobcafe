import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ScrollView {

    Flickable {
        contentHeight: termsOfUse.implicitHeight
        contentWidth:termsOfUse.implicitWidth
        width: termsOfUse.implicitWidthp
        height: termsOfUse.implicitHeight
        ColumnLayout {

            Text {
                id: termsOfUse
                lineHeight: 1.3
                height: text.length
                Layout.maximumWidth: root.width - (root.width / 4)
                Layout.margins: root.width / 10
                fontSizeMode: Text.Fit
                wrapMode: Text.WordWrap
                textFormat: Text.RichText
                font {
                    pointSize: 14
                    family: "Montserrat"
                }
                text: "<h2><img src='shield.svg' width='20' height='20'></img> Who May Use the Services?</h2>
                <p>When one door of hapiness closes, another opens.
                <ul>
                <li><strong>Step 1:</strong> You may use the services only if you agree to...</li>
                <li><strong>Step 2:</strong> You may use the services only if you agree to...</li>
                </ul>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet luctus venenatis lectus magna fringilla urna. Pellentesque dignissim enim sit amet venenatis urna. Tincidunt augue interdum velit euismod. Praesent semper feugiat nibh sed pulvinar proin. Ornare suspendisse sed nisi lacus sed. Sed libero enim sed faucibus turpis in eu mi. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Aliquam id diam maecenas ultricies mi eget mauris pharetra. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris.
                </p>"
            }
        }
    }
}
