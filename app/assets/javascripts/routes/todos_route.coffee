App.TodosRoute = Ember.Route.extend
  model: ->
  	@store.find('todo')
  	#[{id:1, description:'aaaaaaaa', priority: 1  }, {id:2, description:'bbbb', priority: 1  }]