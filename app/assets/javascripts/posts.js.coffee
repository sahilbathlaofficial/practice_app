# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@userForm = 
  initialize: (email, password) ->
    @email = $(email)
    @password = $(password)
    @bindevents();
    return

  bindevents: ->
    @email.change ->
      #alert(userForm.email.val());
      $.ajax(
        data: email: 'x@y.com'
        url: 'http://xyz.com'
        ).complete(->
          alert('done')
          return
        )
      return

$ ->
  userForm.initialize('#user_email', '#user_password');
  return
