Converstation = new Meteor.Collection "Players"

if (Meteor.is_client)
    Template.chatspace.messages = -> Converstation.find()
    Template.chatspace.events = {
        'click #chat_button' : ->
            Converstation.insert( {chat: $("#chat_message").val() } )
            false
    }
