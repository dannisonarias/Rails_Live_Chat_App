App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
connected: ->

disconnected: ->

received: (data)->
    $('#message-container').append data.mod_message
    element = document.getElementById("messages");
    element.scrollTop = element.scrollHeight;