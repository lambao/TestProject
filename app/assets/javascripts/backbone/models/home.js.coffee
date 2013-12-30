class TESST.Models.Home extends Backbone.Model
  paramRoot: 'home'

  defaults:

class TESST.Collections.HomesCollection extends Backbone.Collection
  model: TESST.Models.Home
  url: '/homes'
