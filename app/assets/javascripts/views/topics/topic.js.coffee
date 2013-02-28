class Forumx.Views.Topic extends Backbone.View

  template: JST['topics/topic']
  
  events:
    'submit .new_reply': 'createReply'

  initialize: ->
    @replies = new Forumx.Collections.Replies(id: @model.get('_id'))
    @replies.on('reset', @render, this)

  show: ->
    @replies.fetch()
    this

  render: =>
    $(@el).html(@template(topic : @model))
    replies_view = new Forumx.Views.RepliesIndex(collection : @replies)
    @$(".replies_holder").append(replies_view.render().el)
    this

  createReply: (event) ->
    event.preventDefault()
    @replies.create({ message : @$(".new_reply_message").val(), author : @$(".new_reply_author").val(), topic_id: @$(".reply_topic_id").val() })
