class Robin.Views.MainView extends Backbone.View
  template: JST['main']

  initialize: ->
    @render()

  events: {
    "propertychange #activity-search-input": "searchKeyPressed",
    "input #activity-search-input": "searchKeyPressed",
    "keyup #activity-search-input": "searchKeyPressed",
    "paste #activity-search-input": "searchKeyPressed",
    "change #activity-search-input": "searchKeyPressed",
    "focus #activity-search-input": "setupSearch",
    "click .style-type-container": "styleButtonClicked",
    "click #results-hover-shoes": "openShoesLink",
    "click #results-hover-sweater": "openSweaterLink",
    "click #results-hover-pants": "openPantsLink"
  }

  render: ->
    @$el.html @template

    this

  searchKeyPressed: (event) ->
    @searchArray = ["Clubbing", "Going to the Bar", "Chilling with Friends", "Going on a date", "Heading to class"] 
    shouldShowButtons = false
    for query in @searchArray
      if (query == $(event.currentTarget).val())
        shouldShowButtons = true 
    if(shouldShowButtons)
      $(".buttons-content").fadeIn("fast")
    else
      $(".buttons-content").fadeOut("fast")

  styleButtonClicked: (event) ->
    console.log("style button clicked")
    itemsToFade = [$("#activity-search-input"), $(".buttons-content"), $("#activity-i-am")]
    for item in itemsToFade
      item.fadeOut("fast")

    delay = (ms, func) -> setTimeout func, ms

    searchInput = $("#activity-search-input")
    delay 200, -> searchInput.val("Your Results:")
    delay 200, -> searchInput.fadeIn("fast")
    delay 200, -> $("#results-container").fadeIn("fast")

  openSweaterLink: ->
    window.open("http://www.hm.com/ca/product/01540?article=01540-D")

  openShoesLink: ->
    window.open("http://www.hm.com/ca/product/01224?article=01224-B")

  openPantsLink: ->
    window.open("http://www.hm.com/ca/product/00918?article=00918-E")

  setupSearch: (event) ->
    searchBar = $(event.currentTarget)
    if (searchBar.val() == "Your Results:")
      searchBar.val("")
      $("#results-container").fadeOut("fast")
      searchBar.fadeOut("fast")
      
      delay = (ms, func) -> setTimeout func, ms
      delay 200, -> searchBar.fadeIn("fast")
      delay 200, -> $("#activity-i-am").fadeIn("fast")
