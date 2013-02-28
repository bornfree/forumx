class Forumx.Collections.Replies extends Backbone.Collection

  initialize: (options) ->
    this.id = options.id
  
  url: ->
    # This custom route is for fetching replies of a specific topic
     return '/topics/' + this.id + '/replies'
  
  model: Forumx.Models.Reply
