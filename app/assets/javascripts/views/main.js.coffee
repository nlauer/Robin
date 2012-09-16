class Robin.Views.MainView extends Backbone.View
  template: JST['main']

  initialize: ->
    @render()

  events: {
    "blur #activity-search-input": "searchBlurred"
  }

  render: ->
    @$el.html @template

    this

  searchBlurred: (event) ->
    console.log($(".buttons-content"))
    $(".buttons-content").fadeIn("fast")
