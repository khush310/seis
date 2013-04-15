K.provide "Bar.Views.Repos", {}
class K.Bar.Views.Repos.Main extends K.Backbone.Marionette.CompositeView
  itemView: K.Bar.Views.Repos.Item 
  template:"""
  <div class="list">
  </div>
  """
  itemViewContainer: ".list"