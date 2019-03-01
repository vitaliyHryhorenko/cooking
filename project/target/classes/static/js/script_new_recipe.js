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




	let product_type_item = document.querySelectorAll('.product_type_item');
	let ingredient = document.querySelectorAll('.ingredient');
	let products = document.querySelector('.products');
	let product_type_item_click = null;


	for(let i = 0; i < product_type_item.length; i++) {
		product_type_item[i].onmouseover = activeProductTypeItemOver;
		product_type_item[i].onmouseout = activeProductTypeItemOut;
	}
	function activeProductTypeItemOver() {
		this.classList.add('product_type_item_hover');
	}
	function activeProductTypeItemOut() {
		this.classList.remove('product_type_item_hover');
	}

	for (let i = 0; i < product_type_item.length; i++) {
		product_type_item[i].onclick = function() {
			for (let j = 0; j < ingredient.length; j++) {
				ingredient[j].style.display = 'none';
			}
			if (product_type_item_click == null) {
				this.classList.add('product_type_item_click');
				products.classList.add('products_active');
				for (let j = 0; j < ingredient.length; j++) {
					if (this.getAttribute('data-group') == ingredient[j].getAttribute('data-group')) {
						ingredient[j].style.display = 'block';
					}
				}
			} else if (product_type_item_click == this) {
				product_type_item_click.classList.remove('product_type_item_click');
				products.classList.remove('products_active');
			} else {
				product_type_item_click.classList.remove('product_type_item_click');
				this.classList.add('product_type_item_click');
				products.classList.add('products_active');
				for (let j = 0; j < ingredient.length; j++) {
					if (this.getAttribute('data-group') == ingredient[j].getAttribute('data-group')) {
						ingredient[j].style.display = 'block';
					}
				}
			}
			product_type_item_click = document.querySelector('.product_type_item_click');
		}
	}



	var ingredient_check_mark = document.querySelectorAll('.ingredient_check_mark');
	var ingredient_check_mark_label = document.querySelectorAll('.ingredient_check_mark_label');
	var ingredient_check_mark_img = document.querySelectorAll('.ingredient_check_mark_img');

	for(let i = 0; i < ingredient_check_mark.length; i++) {
		ingredient_check_mark[i].onclick = function() {
			ingredient_check_mark_img[i].classList.toggle('ingredient_check_mark_img_active');
		}
	}
	for(let i = 0; i < ingredient_check_mark_label.length; i++) {
		ingredient_check_mark_label[i].onclick = function() {
			ingredient_check_mark_img[i].classList.toggle('ingredient_check_mark_img_active');
		}
	}








	var dish_type_admin = document.querySelector('.dish_type_admin');
	var dish_type_select_admin = document.querySelector('.dish_type_select_admin');
	var dish_type_select_admin_ul_li = document.querySelectorAll('.dish_type_select_admin ul li');

	dish_type_admin.onclick = activeSelect;
	function activeSelect() {
		if(dish_type_select_admin.style.display == 'block')
			dish_type_select_admin.style.display = 'none';
		else
			dish_type_select_admin.style.display = 'block';
	}



	for (var i = 0; i < dish_type_select_admin_ul_li.length; i++) {
		dish_type_select_admin_ul_li[i].onclick = activeSelectUlLiClick;
	}
	
	function activeSelectUlLiClick() {
		dish_type_admin.innerText = this.textContent;
		dish_type_select_admin.style.display = 'none';
	}



	for (var i = 0; i < dish_type_select_admin_ul_li.length; i++) {
		dish_type_select_admin_ul_li[i].onmouseover = activeSelectUlLiOver;
		dish_type_select_admin_ul_li[i].onmouseout = activeSelectUlLiOut;
	}
	function activeSelectUlLiOver() {
		for (var i = 0; i < dish_type_select_admin_ul_li.length; i++) {
			dish_type_select_admin_ul_li[i].style.backgroundColor = '#fff';
		}
		this.style.backgroundColor = '#D7C0AE';
	}

	function activeSelectUlLiOut() {
		if(dish_type_select_admin.style.display == 'block') {
			this.style.backgroundColor = '#fff';
		}
	}







	var dish_complexity_admin = document.querySelector('.dish_complexity_admin');
	var dish_complexity_admin_select = document.querySelector('.dish_complexity_admin_select');
	var dish_type_select_ul_li = document.querySelectorAll('.dish_complexity_admin_select ul li');

	dish_complexity_admin.onclick = activeSelectAdmin;
	function activeSelectAdmin() {
		if(dish_complexity_admin_select.style.display == 'block')
			dish_complexity_admin_select.style.display = 'none';
		else
			dish_complexity_admin_select.style.display = 'block';
	}



	for (var i = 0; i < dish_type_select_ul_li.length; i++) {
		dish_type_select_ul_li[i].onclick = activeSelectUlLiClickAdmin;
	}
	
	function activeSelectUlLiClickAdmin() {
		dish_complexity_admin.innerText = this.textContent;
		dish_complexity_admin_select.style.display = 'none';
	}



	for (var i = 0; i < dish_type_select_ul_li.length; i++) {
		dish_type_select_ul_li[i].onmouseover = activeSelectUlLiOverAdmin;
		dish_type_select_ul_li[i].onmouseout = activeSelectUlLiOutAdmin;
	}
	function activeSelectUlLiOverAdmin() {
		for (var i = 0; i < dish_type_select_ul_li.length; i++) {
			dish_type_select_ul_li[i].style.backgroundColor = '#fff';
		}
		this.style.backgroundColor = '#D7C0AE';
	}

	function activeSelectUlLiOutAdmin() {
		if(dish_complexity_admin_select.style.display == 'block') {
			this.style.backgroundColor = '#fff';
		}
	}
}