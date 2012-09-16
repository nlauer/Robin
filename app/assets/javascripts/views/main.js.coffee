class Robin.Views.MainView extends Backbone.View
  template: JST['main']

  initialize: ->
    @render()

  events: {
    "propertychange #activity-search-input": "searchKeyPressed",
    "input #activity-search-input": "searchKeyPressed",
    "keyup #activity-search-input": "searchKeyPressed",
    "paste #activity-search-input": "searchKeyPressed",
    "change #activity-search-input": "searchKeyPressed"
  }

  render: ->
    @$el.html @template

    this

  searchKeyPressed: (event) ->
    console.log($(event.currentTarget).val())
    @searchArray = ["Clubbing", "Going to the Bar", "Chilling with Friends", "Going on a date", "Heading to class"] 
    shouldShowButtons = false
    for query in @searchArray
      if (query == $(event.currentTarget).val())
        shouldShowButtons = true 
    if(shouldShowButtons)
      $(".buttons-content").fadeIn("fast")
    else
      $(".buttons-content").fadeOut("fast")
