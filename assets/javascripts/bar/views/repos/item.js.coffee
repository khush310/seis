K.provide "Bar.Views.Repos", {}
class K.Bar.Views.Repos.Item extends K.Backbone.Marionette.ItemView
  template: """
  <a target="_blank" href="{{html_url}}">
    <span> {{full_name}} </span>
  </a>
  """
  className: "repo"