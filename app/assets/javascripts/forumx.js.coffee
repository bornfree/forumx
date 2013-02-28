window.Forumx =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  initialize: ->
    new Forumx.Routers.Topics()
    Backbone.history.start()

$(document).ready ->
  Forumx.initialize()
