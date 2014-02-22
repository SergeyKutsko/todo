App.TodosRoute = Ember.Route.extend
  model: ->
  	@store.find('todo')