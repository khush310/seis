K.provide "Bar.Views", {}
class K.Bar.Views.Main extends K.Backbone.Marionette.Layout
  id: "stage-wrapper"
  template: """
  <div id="profile">
    <img src="{{avatar_url}}" />
    <span> {{login}} </span>
    <div id="button"> &#8743;
    </div>
  </div>
    <div id="repos" > </div>
  </div>
  <div id="news">
    <div id="commit" > </div>
  </div>
  """
  regions: 
    reposRegion: '#repos'
    commitRegion: '#commit'

  events:
    "click #profile": "toggleRepos"

  toggleRepos: () =>
    K.$("#repos").toggle()

  onShow: () =>
    publisher_username = K.Bar.publisher.get("github_username")
    K.$.ajax({url: "https://api.github.com/users/#{publisher_username}/repos"}).done( 
      (resp) => 
        console.log(resp)
        repos = new K.Backbone.Collection(resp)
        reposView = new K.Bar.Views.Repos.Main({collection: repos})
        @reposRegion.show reposView
    )