# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#company_selected_category').change ->
    $.ajax
      url: '/categories/new/get_departments'
      type: 'GET'
      data: {company:$('#company_selected_category').val()}
      success: (data, textStatus, jqXHR) ->
        $('#departments_for_category').html(data)
    return

  $('#company_selected_index_category').change ->
    $.ajax
      url: '/categories/index/populate_categories'
      type: 'GET'
      data: {company:$('#company_selected_index_category').val()}
      success: (data, textStatus, jqXHR) ->
        $('#categories').html(data)
    return
