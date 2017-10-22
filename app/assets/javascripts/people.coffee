# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('document').ready ->

  $('#company_select_employee').change ->
    $.ajax
      url: '/people/new/getdepartments'
      type: 'GET'
      data:{company:$('#company_select_employee').val()}
      success: (data,textStatus,jqXHR) ->
        $('#employee_criteria_new').html(data)
    return

  $('body').delegate '#department_selected_category', 'change', ->
    $.ajax
      url: '/people/new/getcategories'
      type: 'GET'
      data: {company: $('#company_select_employee').val(),department:$('#department_selected_category').val()}
      success: (data, textStatus, jqXHR) ->
        $('#employee_criteria_new').append(data)
    return
  $('body').delegate '#category_selected_type', 'change', ->
    $.ajax
      url: '/people/new/gettechnology'
      type: 'GET'
      data: {category: $('#category_selected_type').val() }
      success: (data, textStatus, jqXHR) ->
        $('#employee_criteria_new').append(data)
    return

  $('#company_tech_index').change ->
    $.ajax
      url: '/people/index/getpeople'
      type: 'GET'
      data: {company:$('#company_tech_index').val()}
      success: (data, textStatus, jqXHR) ->
        $('#employee_list').html(data)
  return