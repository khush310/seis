K.provide "Bar.Views.Repos", {}
class K.Bar.Views.Repos.Item extends K.Backbone.Marionette.ItemView
  template: """
  <a href="{{html_url}}">
    <span> {{full_name}} </span>
  </a>
  """
  className: "repo"