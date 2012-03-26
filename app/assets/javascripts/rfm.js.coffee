window.Rfm =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Rfm.Routers.Categories
    Backbone.history.start()

$(document).ready ->
  Rfm.init()
