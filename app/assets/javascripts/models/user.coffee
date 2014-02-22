App.User = Ember.Object.extend({})


App.currentUser =  App.User.create({id: false})

$ ->
  cu = $('head').data('user') || {}
  App.currentUser.setProperties(cu)