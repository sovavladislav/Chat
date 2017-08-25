$ ->
  time = 300
  $('#user_role').change ->
  	if $(this).val() is 'student'
  		$('.if-student').show time
  		$('.if-curator-or-student').show time
  	else
  		$('.if-student').hide(time)  if $('.if-student').is(':visible')
  		$('.if-curator-or-student').hide(time)  if $('.if-curator-or-student').is(':visible')

	  if $(this).val() is 'professor'
	  	$('.if-professor').show time
	  	$('.if-curator-or-student').show time
	  else
	  	$('.if-professor').hide(time) if $('.if-professor').is(':visible')
	    $('.if-curator-or-student').hide(time)  if $('.if-curator-or-student').is(':visible')