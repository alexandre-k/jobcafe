const ipAddress = 'http://127.0.0.1:8080';

const updateUserState = (data) => {
    user = data;
}

function request(verb, endpoint, obj, cb) {

    var BASE = ipAddress;
    var xhr = new XMLHttpRequest();
    var url = BASE + (endpoint ? endpoint : '');
    console.log('Using URL --> ' + url);
    if (cb) {
        xhr.onreadystatechange = function() {
        if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
            data = JSON.parse(xhr.responseText);
            if (data) cb(data);
            console.log("LOADED ->", data)
        }
        }
    }
    xhr.open(verb, url);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.setRequestHeader('Accept', 'application/json');
    var data = obj? JSON.stringify(obj) : '';
    xhr.send(data);
    console.log(verb + ' ' + endpoint + '\n\t' + data);
}
