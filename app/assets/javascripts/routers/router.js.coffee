class Robin.Routers.MainRouter extends Backbone.Router
  routes:
    '':'show'

  show: ->
    @view = new Robin.Views.MainView()
    $('body').html @view.render().el
