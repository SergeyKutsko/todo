App.User = DS.Model.extend
  signedIn: ->
  	@get('id')

  email: DS.attr('string')