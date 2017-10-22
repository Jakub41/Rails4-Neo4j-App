# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#company_selected_tech_new').change ->
    $.ajax
      url: '/technologies/new/getcategory'
      type: 'GET'
      data: company: $('#company_selected_tech_new').val()
      success: (data, textStatus, jqXHR) ->
        $('#category_for_technology').html data
    return
  $('#company_tech_index').change ->
    $.ajax
      url: '/technologies/index/populate_tech'
      type: 'GET'
      data: company: $('#company_tech_index').val()
      success: (data, textStatus, jqXHR) ->
        $('#technology_list').html data
return