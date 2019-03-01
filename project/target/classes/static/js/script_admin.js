window.onload = function() {

	var inputs = document.querySelectorAll( '.inputfile' );
	Array.prototype.forEach.call( inputs, function( input )
	{
		var label	 = input.nextElementSibling,
			labelVal = label.innerHTML;

		input.addEventListener( 'change', function( e )
		{
			var fileName = '';
			if( this.files && this.files.length > 1 )
				fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count1}', this.files.length );
			else
				fileName = e.target.value.split( '\\' ).pop();

			if( fileName )
				label.querySelector( 'span' ).innerHTML = fileName;
			else
				label.innerHTML = labelVal;
		});
	});







	var pane_enter = document.querySelector('.pane_enter');
	var pane_registration = document.querySelector('.pane_registration');

	var login_input_enter = document.querySelectorAll('.login_input_enter');
	var login_input_registration = document.querySelectorAll('.login_input_registration');

	for (var i = 0; i < login_input_enter.length; i++) {
		login_input_enter[i].onclick = activePaneEnter;
	}
	function activePaneEnter() {
		pane_enter.classList.remove('pane_opacity');
		pane_registration.classList.add('pane_opacity');
	}

	for (var i = 0; i < login_input_registration.length; i++) {
		login_input_registration[i].onclick = activePaneRegistration;
	}
	function activePaneRegistration() {
		pane_registration.classList.remove('pane_opacity');
		pane_enter.classList.add('pane_opacity');
	}




	var button_registration = document.querySelector ( '.button_registration');
	button_registration.onclick = function() {
		alert("Реєстрація успішна");
		document.querySelector('.login_input_registration_1').value = "";
		document.querySelector('.login_input_registration_2').value = "";
	}
}