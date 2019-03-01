window.onload = function() {

	let button_remove = document.querySelectorAll ( '.block_admin .button_remove' );
	let recipe = document.querySelectorAll ( '.block_admin .recipe-list_item' );

	for (let i = 0; i<button_remove.length; i++) {
		button_remove[i].onclick = function () {
			for (let j = 0; j<recipe.length; j++) {
				if (j==i) 
					recipe[j].style.display = "none";
			}
		}
	}

}