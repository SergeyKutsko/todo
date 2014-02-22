App.TodosController = Ember.ArrayController.extend
  content: []
  sortProperties: ['priority']
  sortAscending: false

  delete: (m)->
    m.deleteRecord()
    m.save()

App.TodosCreateController = Ember.Controller.extend
  create: ->
    m = App.Todo.createRecord(@getProperties('description', 'priority'))
    self = @
    m.save().then(->
      self.transitionToRoute('todos')
    , (e) ->
      self.set('errorMessage', e.get('errors') )
      e.transitionTo('deleted')
    )

App.TodosUpdateController = Ember.Controller.extend
  update: (m)->
    self = @
    m.save().then(->
      self.transitionToRoute('todos')
    , (e) ->
      self.set('errorMessage', e.get('errors') )
    )


