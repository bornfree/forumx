class Forumx.Views.ReplyNew extends Backbone.View

  template: JST['replies/new']

  render: ->
    $(@el).html(@template())
    this
