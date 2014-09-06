
Template.calendar.helpers
  tasks: ->
    Tasks.find
      user: Meteor.user()

Template.calendar.events
  "click .new": (e) ->
    console.log "clicked .new"
    Tasks.insert
      title: "new event"
      start_datetime: new Date()
      end_datetime: new Date()
      task: false
      user: Meteor.user()
