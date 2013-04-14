#= require ./bar/prelude
#= require ./bar/lib/jquery
#= require ./bar/lib/underscore
#= require ./bar/lib/backbone
#= require ./bar/lib/backbone.marionette
#= require_tree ./bar/patches 
#= require ./bar/lib/handlebars
#= require_tree ./bar/views
#= require ./bar/application

K.Bar.init = (options) ->
  K.Bar.publisher = new K.Backbone.Model({github_username: options.github_username})
  K.bar.start()