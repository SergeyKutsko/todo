#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require app


# for more details see: http://emberjs.com/guides/application/
window.App = Ember.Application.create()

Ember.Handlebars.helper('FormatErrorMessages', (errors) ->
  console.log errors
  li = for key, message of errors
    "<li> #{key}: #{message} </li>"
  li.join('')

  new Handlebars.SafeString("<ul>#{li.join('')}</ul>")
)

