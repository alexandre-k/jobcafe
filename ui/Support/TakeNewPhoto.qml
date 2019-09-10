import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtMultimedia 5.13

Camera {
    id: camera

    imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash

    exposure {
        exposureCompensation: -1.0
        exposureMode: Camera.ExposurePortrait
    }

    flash.mode: Camera.FlashRedEyeReduction

    imageCapture {
        onImageCaptured: {
            photoPreview.source = preview  // Show the preview in an Image
        }
    }
}

//VideoOutput {
//    source: camera
//    anchors.fill: parent
//    focus : visible // to receive focus and capture key events when visible
//}
//Image {
//    id: photoPreview
//}
