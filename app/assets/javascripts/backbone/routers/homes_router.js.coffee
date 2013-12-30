class TESST.Routers.HomesRouter extends Backbone.Router
  initialize: (options) ->
    @homes = new TESST.Collections.HomesCollection()
    @homes.reset options.homes

  routes:
    "new"      : "newHome"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newHome: ->
    @view = new TESST.Views.Homes.NewView(collection: @homes)
    $("#homes").html(@view.render().el)

  index: ->
    @view = new TESST.Views.Homes.IndexView(homes: @homes)
    $("#homes").html(@view.render().el)

  show: (id) ->
    home = @homes.get(id)

    @view = new TESST.Views.Homes.ShowView(model: home)
    $("#homes").html(@view.render().el)

  edit: (id) ->
    home = @homes.get(id)

    @view = new TESST.Views.Homes.EditView(model: home)
    $("#homes").html(@view.render().el)
