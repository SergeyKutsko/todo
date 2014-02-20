App.TodosController = Ember.Controller.extend
  email: ''
  password: ''

  delete: (m)->
   m.deleteRecord()
   m.save()

  create: ->
    m = App.Todo.createRecord({ description: 'Rails is Omakase', priority: 10 })
    m.save()