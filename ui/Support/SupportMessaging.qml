import QtQuick 2.12
import "../Utils.js" as Utils
import "../LoadingMessage"

SupportMessagingForm {
    LoadingMessage {
        id: loadingMessage
        msg: "Loading messages history. Please, wait..."
    }

    property int ticketId

    Component.onCompleted: {
        const updateMessages = (data) => {
            data.forEach((message, index) => {
                message.createdDate = Utils.formatDate(message.createdDate);
                messages.append(message);
            });
            loadingMessage.close();
            view.positionViewAtEnd();
        }

        ticketId = 1
        isOpen = true
        root.state.user = {
          "email": "john.doe@gmail.com",
          "fullName": "John Doe",
          "firstName": "John",
          "lastName": "Doe",
          "password": "toto",
          "phone": "080-1111-2222",
          "profession": {
            "label": "Accountant"
          },
          "membership": {
            "label": "Basic Plan",
            "price": 3.99,
            "tax": 8.2
          },
          "isNewMessageNotified": true,
          "isNewServiceAdvertised": true,
          "subscribed": true,
          "createdDate": "2019-08-12T10:39:28.565+0000",
          "updatedDate": "2019-08-12T10:39:28.565+0000",
          "isStaff": false,
          "profilePicture": "http://localhost:8080/profile_picture.png"
        }

        const data = [
                    {
                        author: {
                            email: 'john.doe@gmail.com'
                        },
                        content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        createdDate: "2019-08-12T10:39:28.565+0000"
                    },
                    {
                       author: {
                           email: 'david.doe@gmail.com'
                       },
                       content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                       createdDate: "2019-08-12T10:39:28.565+0000"
                    },
                    {
                        author: {
                            email: 'john.doe@gmail.com'
                        },
                        content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        createdDate: "2019-08-12T10:39:28.565+0000"
                    },
                       {
                          author: {
                              email: 'david.doe@gmail.com'
                          },
                          content: 'Lorem ipsum dolor sit amet',
                          createdDate: "2019-08-12T10:39:28.565+0000"
                       },
        ]
        updateMessages(data);

//        Utils.request('GET', `/message?ticketId=` + ticketId, undefined, updateMessages);
//        loadingMessage.open();

    }

    sendArea.onClicked: postMessage()

    changeTicketStatus.onClicked: {
        if (isOpen) {
            isOpen = false
        } else {
            isOpen = true
        }
        Utils.request('PATCH', '/ticket/' + ticketId);
    }

    function postMessage () {
        if (newMessage.text === "") {
            return;
        }

        const showMessage = (data) => {
            console.log("New message: " + data);
        }

        const newMessageWritten = {
            author: root.state.user,
            content: newMessage.text,
            ticketId: ticketId,
            createdDate: new Date()
            // attachedFile: attachedFile
        }

        Utils.request('POST', '/message', newMessageWritten, showMessage);
        newMessageWritten.createdDate = Utils.formatDate(newMessageWritten.createdDate);
        messages.append(newMessageWritten);
        newMessage.text = "";
        view.positionViewAtEnd();
    }
}
