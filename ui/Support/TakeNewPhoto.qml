import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtMultimedia 5.12

Page {

    Rectangle {
        anchors.centerIn: parent
        color: "black"
        anchors.fill: parent
        ColumnLayout {

            Item {
                width: root.width - 20
                height: root.height - (root.height / 2)
                visible: true

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

                VideoOutput {
                    source: camera
                    anchors.fill: parent
                    focus : visible // to receive focus and capture key events when visible
                }

                Image {
                    id: photoPreview
                    width: root.width - 20
                    fillMode: Image.PreserveAspectFit
                    anchors.centerIn: parent
                }
            }
        }
    }
    footer:
        Rectangle {
            width: root.width - 40
            height: 100
            color: "black"
            Image {
                // <div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/"             title="Flaticon">www.flaticon.com</a></div>
                id: capturePhoto
                source: "qrc:ui/Support/photos.svg"
                fillMode: Image.PreserveAspectFit
                width: 50
                height: 50
                anchors.centerIn: parent
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        camera.searchAndLock();
                        camera.imageCapture.capture();
                        camera.stop()
                        capturePhoto.visible = false
                        validate.visible = true

                    }
                }
            }
            RowLayout {
                id: validate
                visible: false
                width: root.width - 40
                Image {
                    // <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/"             title="Flaticon">www.flaticon.com</a></div>
                    id: recapturePhoto
                    source: "qrc:ui/Support/redo.svg"
                    fillMode: Image.PreserveAspectFit
                    Layout.alignment: Qt.AlignHCenter
                    Layout.preferredWidth: 50
                    Layout.preferredHeight: 50
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            validate.visible = false
                            capturePhoto.visible = true
                            photoPreview.source = ""
                            camera.start()
                        }
                    }
                }

                Image {
                    // <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/"             title="Flaticon">www.flaticon.com</a></div>
                    id: usePhoto
                    source: "qrc:ui/Support/attach.svg"
                    fillMode: Image.PreserveAspectFit
                    Layout.alignment: Qt.AlignHCenter
                    Layout.preferredWidth: 50
                    Layout.preferredHeight: 50
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            root.supportPhotos.append({
                                "path": "file://" + camera.imageCapture.capturedImagePath
                            });
                            stack.pop()
                        }
                    }
                }
            }
    }
}
