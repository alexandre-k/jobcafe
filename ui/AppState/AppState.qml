import QtQuick 2.12
import '../Utils.js' as Utils

Item {
    Component.onCompleted: {
        console.log("Saying hello from cpp")
        appstate.sayHello();
        appstate.getUser();
        user = appstate.getUser();
        console.log("***** USER from cpp", appstate.getUser())
        console.log('ON COMPLETED STATE **********************')
        Utils.request('GET', `/user/` + 'john.doe@gmail.com', undefined, Utils.updateUserState);

        console.log('USER ', user)
    }

    property var user: ({
        email: '',
        fullName: '',
        firstName: '',
        lastName: '',
        password: '',
        phone: '',
        isNewMessageNotified: '',
        isNewServiceAdvertised: '',
        subscribed: '',
        profilePicture: '',
        profession: '',

    })
}
