window.onload = function() {

	var no_active = document.querySelectorAll('.layout .name_no-active');
	var block = document.querySelectorAll('.block');


	for (let i = 0; i < no_active.length; i++) {
		no_active[i].onclick = function() {
			let active = document.querySelector('.layout .name_active');
			active.classList.remove('name_active');
			this.classList.add('name_active');


			let block_state_active = document.querySelector('.block_state_active');
			block_state_active.classList.remove('block_state_active');
			block[i].classList.add('block_state_active');
		}	
	}







	







	
	var checkbox_time = document.querySelectorAll('.checkbox_time');
	var checkbox_time_click = document.querySelector('.checkbox_time_click');

	for (var i = 0; i < checkbox_time.length; i++) {
		checkbox_time[i].onmouseover = activeCheckboxOverTime;
		checkbox_time[i].onmouseout = activeCheckboxOutTime;
	}
	function activeCheckboxOverTime() {
		this.classList.add('checkbox_hover');
	}
	function activeCheckboxOutTime() {
		this.classList.remove('checkbox_hover');
	}

	for (var i = 0; i < checkbox_time.length; i++) {
		checkbox_time[i].onclick = activeCheckboxClickTime;
	}
	function activeCheckboxClickTime() {
		
		if (checkbox_time_click == null) {
			this.classList.add('checkbox_time_click');
		} else if (checkbox_time_click == this) {
			checkbox_time_click.classList.remove('checkbox_time_click');
			
		} else {
			checkbox_time_click.classList.remove('checkbox_time_click');
			this.classList.add('checkbox_time_click');
		}
		checkbox_time_click = document.querySelector('.checkbox_time_click');
	}








	var checkbox_complexity = document.querySelectorAll('.checkbox_complexity');
	var checkbox_complexity_click = document.querySelector('.checkbox_complexity_click');


	for (var i = 0; i < checkbox_complexity.length; i++) {
		checkbox_complexity[i].onmouseover = activeCheckboxOverComplexity;
		checkbox_complexity[i].onmouseout = activeCheckboxOutComplexity;
	}
	function activeCheckboxOverComplexity() {
		this.classList.add('checkbox_hover');
	}
	function activeCheckboxOutComplexity() {
		this.classList.remove('checkbox_hover');
	}

	for (var i = 0; i < checkbox_complexity.length; i++) {
		checkbox_complexity[i].onclick = activeCheckboxClickComplexity;
	}
	function activeCheckboxClickComplexity() {
		
		if (checkbox_complexity_click == null) {
			this.classList.add('checkbox_complexity_click');
		} else if (checkbox_complexity_click == this) {
			checkbox_complexity_click.classList.remove('checkbox_complexity_click');
			
		} else {
			checkbox_complexity_click.classList.remove('checkbox_complexity_click');
			this.classList.add('checkbox_complexity_click');
		}
		checkbox_complexity_click = document.querySelector('.checkbox_complexity_click');
	}







	var checkbox_restriction = document.querySelectorAll('.checkbox_restriction');
	var checkbox_restriction_click = document.querySelector('.checkbox_restriction_click');


	for (var i = 0; i < checkbox_restriction.length; i++) {
		checkbox_restriction[i].onmouseover = activeCheckboxOverRestriction;
		checkbox_restriction[i].onmouseout = activeCheckboxOutRestriction;
	}
	function activeCheckboxOverRestriction() {
		this.classList.add('checkbox_hover');
	}
	function activeCheckboxOutRestriction() {
		this.classList.remove('checkbox_hover');
	}

	for (var i = 0; i < checkbox_restriction.length; i++) {
		checkbox_restriction[i].onclick = activeCheckboxClickRestriction;
	}
	function activeCheckboxClickRestriction() {
		this.classList.toggle('checkbox_restriction_click');
	}


	// var checkbox_restriction = document.querySelectorAll('.checkbox_restriction');
	// var qqq = document.querySelectorAll('.qqq');

	// for (var i = 0; i < checkbox_restriction.length; i++) {
	// 	checkbox_restriction[i].onmouseover = activeCheckboxOverRestriction();
	// 	checkbox_restriction[i].onmouseout = activeCheckboxOutRestriction();
	// }
	// function activeCheckboxOverRestriction() {
	// 	qqq[i].style.opacity = '1';
	// }
	// function activeCheckboxOutRestriction() {
	// 	qqq[i].style.opacity = '0';
	// }

	// for (var i = 0; i < checkbox_restriction.length; i++) {
	// 	checkbox_restriction[i].onclick = activeCheckboxClickRestriction;
	// }
	// function activeCheckboxClickRestriction() {
	// 	this.classList.toggle('checkbox_restriction_click');
	// }





	var dish_type = document.querySelector('.dish_type');
	var dish_type_select = document.querySelector('.dish_type_select');
	var dish_type_select_ul_li = document.querySelectorAll('.dish_type_select ul li');

	dish_type.onclick = activeSelect;
	function activeSelect() {
		if(dish_type_select.style.display == 'block')
			dish_type_select.style.display = 'none';
		else
			dish_type_select.style.display = 'block';
	}



	for (var i = 0; i < dish_type_select_ul_li.length; i++) {
		dish_type_select_ul_li[i].onclick = activeSelectUlLiClick;
	}
	
	function activeSelectUlLiClick() {
		dish_type.innerText = this.textContent;
		dish_type_select.style.display = 'none';
	}



	for (var i = 0; i < dish_type_select_ul_li.length; i++) {
		dish_type_select_ul_li[i].onmouseover = activeSelectUlLiOver;
		dish_type_select_ul_li[i].onmouseout = activeSelectUlLiOut;
	}
	function activeSelectUlLiOver() {
		for (var i = 0; i < dish_type_select_ul_li.length; i++) {
			dish_type_select_ul_li[i].style.backgroundColor = '#fff';
		}
		this.style.backgroundColor = '#D7C0AE';
	}

	function activeSelectUlLiOut() {
		if(dish_type_select.style.display == 'block') {
			this.style.backgroundColor = '#fff';
		}
	}





	var input_caloric_min = document.querySelector('.input_caloric_min');
	var input_caloric_max = document.querySelector('.input_caloric_max');





	var i_do_eat_meat = document.querySelector('.i_do_eat_meat');
	var label_i_do_eat_meat = document.querySelector('.label_i_do_eat_meat');
	var i_do_eat_meat__check_mark = document.querySelector('.i_do_eat_meat__check_mark');

	i_do_eat_meat.onclick = activeCheckMark;
	label_i_do_eat_meat.onclick = activeCheckMark;
	function activeCheckMark() {
		if(i_do_eat_meat__check_mark.style.opacity == '0')
			i_do_eat_meat__check_mark.style.opacity = '1';
		else
			i_do_eat_meat__check_mark.style.opacity = '0';
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






	//Search by ingredients
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













	//Click button Find
	let button_find_a_recipe = document.querySelector('.button_find_a_recipe_1');
	let qqq_1 = document.querySelector('.qqq_1');

	button_find_a_recipe.onclick = function() {
		qqq_1.classList.remove('layout_no_state_active');
	}


	let button_find_a_recipe_2 = document.querySelector('.button_find_a_recipe_2');
	let qqq_2 = document.querySelector('.qqq_2');

	button_find_a_recipe_2.onclick = function() {
		qqq_2.classList.remove('layout_no_state_active');
	}




	let button_find_a_recipe_3 = document.querySelector('.button_find_a_recipe_3');
	let qqq_3 = document.querySelector('.qqq_3');

	button_find_a_recipe_3.onclick = function() {
		qqq_3.classList.remove('layout_no_state_active');
	}
}

