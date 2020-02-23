# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
MessageBus.start()
MessageBus.callbackInterval = 500
MessageBus.subscribe "/channel", (data) ->
  $("#output").append "#{data}<br>"
