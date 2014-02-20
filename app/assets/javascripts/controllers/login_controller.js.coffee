App.LoginController = Ember.Controller.extend
  email: ''
  password: ''

  login: ->
    self = @
    data = @getProperties('email', 'password')
    self.set('errorMessage', null )
    $.ajax(
      type: 'POST'
      contentType: "application/json"
      url: '/sessions.json'
      data: JSON.stringify(data)
      dataType: 'json'
      success: (r)->
        window.signedIn = true
        self.transitionToRoute('todos');
      error: (r)->
        self.set('errorMessage', JSON.parse(r.responseText).errors )
    )