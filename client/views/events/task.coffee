toHoursMinutes = (date) ->
  h = date.getHours()
  m = date.getSeconds()
  "#{h}:#{m}"

Template.task.helpers
  color: ->
    Please.make_color()
  time: ->
    "#{toHoursMinutes(@start_datetime)} - #{toHoursMinutes(@end_datetime)}"

