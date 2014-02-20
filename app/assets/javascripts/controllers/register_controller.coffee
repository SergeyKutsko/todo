App.RegisterController = Ember.Controller.extend
  email: ''
  password: ''
  password_confirmation: ''

  register: ->
    self = @
    data = { }
    data["user"] = @getProperties('email', 'password', 'password_confirmation')
    self.set('errorMessage', null )
    $.ajax(
      type: 'POST'
      contentType: "application/json"
      url: '/users.json'
      data: JSON.stringify(data)
      dataType: 'json'
      success: (r)->
        self.transitionToRoute('login');
      error: (r)->
        self.set('errorMessage', JSON.parse(r.responseText).errors )
    )