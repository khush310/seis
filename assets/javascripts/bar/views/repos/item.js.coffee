K.provide "Bar.Views.Repos", {}
class K.Bar.Views.Repos.Item extends K.Backbone.Marionette.ItemView
  template: """
  {{full_name}}
  """