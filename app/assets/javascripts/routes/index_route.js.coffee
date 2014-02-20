App.IndexRoute = Ember.Route.extend
  model: ->
    {
      email: "Tomster",
      signedIn: true
    }