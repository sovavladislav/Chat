$ ->
	time = 300
	if $('#standart_theme').is(':checked')
		$('.standart_theme').show(time)
	else $('.standart_theme').hide(time) if $('.standart_theme').is(':visible')

	$('#standart_theme').change () ->
		if $('#standart_theme').is(':checked')
			$('.standart_theme').show(time)
		else $('.standart_theme').hide(time) if $('.standart_theme').is(':visible')