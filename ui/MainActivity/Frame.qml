import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Canvas {
    function drawRec(ctx, x, y, width, height, radius) {
        ctx.beginPath();
        ctx.moveTo(x + radius, y);
        ctx.lineTo(x + width - radius, y);
        ctx.quadraticCurveTo(x + width, y, x + width, y + radius);
        ctx.lineTo(x + width, y + height);

        ctx.lineTo(x + radius, y + height);
        ctx.quadraticCurveTo(x, y + height, x, y + height - radius);
        ctx.lineTo(x, y);

        ctx.closePath();
    }
    width: 400
    height: 580

    onPaint: {

        const ctx = getContext("2d")

        ctx.lineWidth = 4

//        ctx.fillStyle = "#dfe2e8"
        ctx.fillStyle = "red"
        drawRec(ctx, 20, 20, 380, 570, 100)

        ctx.fill()
        ctx.stroke()
        ctx.restore()
    }
}

