# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $('#company_selected').change ->
    $.ajax
      url: '/populate_departments'
      type: 'GET'
      data: {company:$('#company_selected').val()}
      success: (data, textStatus, jqXHR) ->
        $('#departments').html(data)
    return