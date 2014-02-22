# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @route 'login'
  @route 'register'
  @resource 'todos', ->
  	@route('create')
  	@route('update', path: ":todo_id" )



