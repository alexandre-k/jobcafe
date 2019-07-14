import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    height: termsOfUse.contentHeight
    Flickable {
        anchors.fill: parent
        anchors.margins: 50
        contentHeight: termsOfUse.implicitHeight
        clip: true
        Text {
            id: termsOfUse
            width: parent.width
            fontSizeMode: Text.Fit
            wrapMode: Text.WordWrap
            textFormat: Text.RichText
            text: "<h2><img src='shield.svg' width='20' height='20'></img> Who May Use the Services?</h2>
            <p>When one door of hapiness closes, another opens.
            <ul>
            <li><strong>Step 1:</strong> You may use the services only if you agree to...</li>
            <li><strong>Step 2:</strong> You may use the services only if you agree to...</li>
            </ul>
            <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet luctus venenatis lectus magna fringilla urna. Pellentesque dignissim enim sit amet venenatis urna. Tincidunt augue interdum velit euismod. Praesent semper feugiat nibh sed pulvinar proin. Ornare suspendisse sed nisi lacus sed. Sed libero enim sed faucibus turpis in eu mi. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Aliquam id diam maecenas ultricies mi eget mauris pharetra. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris.

            Tellus in metus vulputate eu scelerisque felis imperdiet. Sit amet facilisis magna etiam tempor. Tellus orci ac auctor augue mauris augue. Ridiculus mus mauris vitae ultricies leo integer malesuada. In tellus integer feugiat scelerisque varius morbi enim nunc. Massa ultricies mi quis hendrerit dolor magna eget est. Nunc lobortis mattis aliquam faucibus. Neque aliquam vestibulum morbi blandit cursus. Neque aliquam vestibulum morbi blandit cursus risus at. Duis ultricies lacus sed turpis tincidunt id. Sem nulla pharetra diam sit amet. Viverra maecenas accumsan lacus vel facilisis. Sed blandit libero volutpat sed cras. At auctor urna nunc id.
            </p>"
        }
    }
}
