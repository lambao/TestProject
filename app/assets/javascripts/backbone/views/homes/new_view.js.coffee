TESST.Views.Homes ||= {}

class TESST.Views.Homes.NewView extends Backbone.View
  template: JST["backbone/templates/homes/new"]

  events:
    "submit #new-home": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (home) =>
        @model = home
        window.location.hash = "/#{@model.id}"

      error: (home, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
