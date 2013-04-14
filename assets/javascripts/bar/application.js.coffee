K.bar = new K.Backbone.Marionette.Application()



K.bar.bind "initialize:after", (options) ->

  K.bar.addRegions
    mainRegion: "#bar_stage"



  publisher_username = K.Bar.publisher.get("github_username")
  K.$.ajax({url: "https://api.github.com/users/#{publisher_username}"}).done( 
    (resp) -> 
      K.Bar.publisher.set(resp)  
      mainView = new K.Bar.Views.Main({model: K.Bar.publisher})
      K.bar.mainRegion.show(mainView)
  )