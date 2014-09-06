Router.configure
  layoutTemplate: 'layout'

Router.map ->
  @route 'landing',
    path: '/'
    onBeforeAction: ->
      if Meteor.user
        Router.go 'calendar'

  @route 'calendar'

