window.Robin =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    console.log 'ini'
    @createRouter()
    @startHistory()

  createRouter:  ->
    console.log 'createrouter'
    new Robin.Routers.MainRouter()

  startHistory: ->
    console.log 'history'
    Backbone.history.start()

$(document).ready ->
  console.log 'docready'
  Robin.init()

