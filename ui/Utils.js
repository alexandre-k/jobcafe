const ipAddress = 'http://127.0.0.1:8080';

const updateUserState = (data) => {
    user = data;
}

function request(verb, endpoint, obj, onSuccess, onError) {

    var BASE = ipAddress;
    var xhr = new XMLHttpRequest();
    var url = BASE + (endpoint ? endpoint : '');

    if (onSuccess) {
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                data = JSON.parse(xhr.responseText);
                if (data) onSuccess(data);
                console.log('Using URL --> ' + url);
                console.log("LOADED ->", data);
            } else {
                if (onError)
                    onError();
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
