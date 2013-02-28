class Forumx.Views.Reply extends Backbone.View

  template: JST['replies/reply']
  
  render: ->
    $(@el).html(@template(reply : @model))
    this

