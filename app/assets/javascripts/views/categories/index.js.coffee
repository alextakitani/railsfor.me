class Rfm.Views.CategoriesIndex extends Backbone.View

  template: JST['categories/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(categories: @collection))
    this
