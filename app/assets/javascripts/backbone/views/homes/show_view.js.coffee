TESST.Views.Homes ||= {}

class TESST.Views.Homes.ShowView extends Backbone.View
  template: JST["backbone/templates/homes/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
