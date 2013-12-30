TESST.Views.Homes ||= {}

class TESST.Views.Homes.HomeView extends Backbone.View
  template: JST["backbone/templates/homes/home"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
