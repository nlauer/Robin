class Robin.Views.MainView extends Backbone.View
  template: JST['main']

  initialize: ->
    @render()

  render: ->
    @$el.html @template

    this

