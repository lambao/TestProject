TESST.Views.Homes ||= {}

class TESST.Views.Homes.EditView extends Backbone.View
  template: JST["backbone/templates/homes/edit"]

  events:
    "submit #edit-home": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (home) =>
        @model = home
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
