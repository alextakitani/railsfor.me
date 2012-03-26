class Rfm.Routers.Categories extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new Rfm.Collections.Categories()
    @collection.fetch()

  index: ->
    view = new Rfm.Views.CategoriesIndex(collection: @collection)
    $('#categories').html(view.render().el)
