App.ApplicationController = Ember.Controller.extend
  signedIn: (->
  	App.currentUser.get('id')
  ).property('App.currentUser.id')

  logout: ->
  	self = @
  	$.ajax(
      type: 'DELETE'
      contentType: "application/json"
      url: "/sessions/#{App.currentUser.get('id') }.json"
      data: {}
      dataType: 'json'
      success: (r)->
        App.currentUser.set('id', null)
        self.transitionToRoute('login')
    )