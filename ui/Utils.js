const ipAddress = 'http://52.197.89.183:8089';

function request(verb, endpoint, obj, onSuccess, onError) {

    var BASE = ipAddress;
    var xhr = new XMLHttpRequest();
    var url = BASE + (endpoint ? endpoint : '');

    xhr.open(verb, url);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.setRequestHeader('Accept', 'application/json');
    var data = obj? JSON.stringify(obj) : '';
    xhr.send(data);
    console.log(verb + ' ' + endpoint + '\n\t' + data);

    if (onSuccess) {
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status >= 200 && xhr.status < 300) {
                    console.log("RESPONSE TEXT ", xhr.responseText);
                    try {
                        data = JSON.parse(xhr.responseText);
                    } catch(error) {
                        data = xhr.responseText;
                    }
                    if (data) onSuccess(data);
                    console.log("Request successful");
                } else {
                    if (onError) onError(xhr.status, xhr.responseText);
                    console.log("Request failed");

                }
            }
        }
    }
}

const formatDate = aDate => {
    const monthNames = [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"
    ];
    const createdDate = new Date(aDate);
    return `${createdDate.getUTCFullYear()} ${monthNames[createdDate.getMonth()]} ${createdDate.getUTCDate()}`;
}

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
