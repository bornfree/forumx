class Forumx.Views.RepliesIndex extends Backbone.View

  template: JST['replies/index']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@addReply)
    this

  addReply: (reply) ->
    reply_view = new Forumx.Views.Reply(model: reply)
    @$(".replies").append(reply_view.render().el)


