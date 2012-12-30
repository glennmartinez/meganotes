# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/



ready = ->
	$('#notes_search').keyup ->
		$.get($("#notes_search").attr("action")
		$("#notes_search").serialize(), null, "script")
		return false


$(document).ready(ready)
$(document).on('page:load', ready)