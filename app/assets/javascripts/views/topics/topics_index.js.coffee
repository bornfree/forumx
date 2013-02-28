class Forumx.Views.TopicsIndex extends Backbone.View

  template: JST['topics/index']

  events:
    'submit #new_topic' : 'createTopic'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @addTopic, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@addTopic)
    this

  createTopic: (event) ->
    event.preventDefault()
    hash = { title : $("#new_topic_title").val(), author : $("#new_topic_author").val() }
    @collection.create hash,
      wait: true

  addTopic: (topic) ->
    topics_view = new Forumx.Views.Topic(model: topic)
    $("#topics").append(topics_view.show().el)

