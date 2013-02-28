class Forumx.Routers.Topics extends Backbone.Router
  routes:
    '' : 'index'

  initialize: ->
    @topics = new Forumx.Collections.Topics()
    @topics.fetch()

  index: ->
    view = new Forumx.Views.TopicsIndex(collection : @topics)
    $("#main").html(view.render().el)
    

