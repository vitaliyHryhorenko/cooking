<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=utf-8" %><html>
<head>

    <meta http-equiv = "Content-Type" content = "text/html; charset = UTF-8"/>
    <meta name = "keywords" content="test, site, website"/>
    <meta name = "description" content = "Этот сайт является пробным сайтом"/>
    <link href = "http://localhost:8080/css/style.css" rel = "stylesheet" type = "text/css"/>
    <link href = "http://localhost:8080/images/Icon_Cooking.png" rel = "shortcut icon" type = "image/x-icon"/>
    <title> Готуємо смачно </title>


</head>
<body>
<div id = "wrapper">
    <header>
        <div class = "wrapper">
            <div class = "logo">
                <a href = "index.html"><img src = "http://localhost:8080/images/Logo1.png"></a>
            </div>
            <div class = "slogan">
                Рецепти за інгредієнтами
            </div>
            <div class = "menu">
                <div class = "search">
                    <input type = "text" id = "text" placeholder = "Пошук...">
                    <button class = "icon"><img src = "images/Icon_Search.png"></button>
                </div>
            </div>
        </div>
    </header>
    <div class = "content">
        <div class = "wrapper">
            <div class = "main">
                <div class = "pane">
                    <div class = "layout">
                        <div class = "layout__inner">
                            <div class = "names">
                                <div class = "name name_no-active name_active">Пошук за рецептами</div><div class = "name name_no-active">Пошук за інгредієнтами</div><div class = "name name_no-active">Пошук за назвою</div>
                            </div>
                            <div class = "block block_search block_no_state_active block_state_active">
                                <div class = "block_items_left">
                                    <div class = "block_items">
                                        <label class="name_items">Час приготування</label>
                                        <div class = "checkboxes">
                                            <div class = "checkbox checkbox_time">
                                                <img src = "images/dish_time/Time_10min.png" width="50" height="50" class = "img">
                                                <label class = "label">До<br><span class = "minute">10</span><br>хвилин</label>
                                            </div>
                                            <div class = "checkbox checkbox_time">
                                                <img src = "images/dish_time/Time_20min.png" width="50" height="50" class = "img">
                                                <label class = "label">До<br><span class = "minute">20</span><br>хвилин</label>
                                            </div>
                                            <div class = "checkbox checkbox_time">
                                                <img src = "images/dish_time/Time_30min.png" width="50" height="50" class = "img">
                                                <label class = "label">До<br><span class = "minute">30</span><br>хвилин</label>
                                            </div>
                                            <div class = "checkbox checkbox_time">
                                                <img src = "images/dish_time/Time_31min.png" width="50" height="50" class = "img">
                                                <label class = "label">Більше<br><span class = "minute">30</span><br>хвилин</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class = "block_items">
                                        <label class="name_items">Складність страви</label>
                                        <div class = "checkboxes">
                                            <div class = "checkbox checkbox_complexity">
                                                <img src = "images/dish_complexity/Easy.png" width="50" height="50" class = "img">
                                                <label class = "label">Легко</label>
                                            </div>
                                            <div class = "checkbox checkbox_complexity">
                                                <img src = "images/dish_complexity/Medium.png" width="50" height="50" class = "img">
                                                <label class = "label">Середнє</label>
                                            </div>
                                            <div class = "checkbox checkbox_complexity">
                                                <img src = "images/dish_complexity/Hard.png" width="50" height="50" class = "img">
                                                <label class = "label">Важко</label>
                                            </div>
                                            <div class = "checkbox checkbox_complexity">
                                                <img src = "images/dish_complexity/Chef.png" width="50" height="50" class = "img">
                                                <label class = "label">Шеф-кухар</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class = "block_items">
                                        <label class="name_items">Тип страви</label>
                                        <div class = "checkboxes">
                                            <div class = "dish_type">
                                                Всі типи страв
                                            </div>
                                            <div class = "dish_type_select">
                                                <ul>
                                                    <li>Всі типи страв</li>
                                                    <li>Перша страва</li>
                                                    <li>Друга страва</li>
                                                    <li>Десерти</li>
                                                    <li>Напої</li>
                                                    <li>Соуси</li>
                                                    <li>Закуски</li>
                                                    <li>Консервації</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class = "block_items">
                                        <label class="name_items">Калорійність в 100гр.</label>
                                        <div class = "checkboxes">
                                            <div class = "caloric">
                                                <input type="text" class = "input_caloric input_caloric_min"><span class = "hyphen">-</span><input type="text" class = "input_caloric input_caloric_max">
                                            </div>
                                            <div class = "i_do_eat_meat"><img src = "images/check_mark.png" class = "i_do_eat_meat__check_mark"></div>
                                            <label class = "label_i_do_eat_meat">Я споживаю м'ясо</label>
                                        </div>
                                    </div>
                                </div>
                                <div class = "block_items_restrictions">
                                    <label class="name_items">Не додавати до рецепту</label>
                                    <div class = "checkboxes checkboxes_restrictions">
                                        <div class = "checkbox  checkbox_restriction checkbox_restriction">
                                            <img src = "images/dish_restrictions/Onion.png" width="50" height="50" class = "img">
                                            <label class = "label">Цибуля</label>
                                        </div>
                                        <div class = "checkbox checkbox_restriction checkbox_restriction_hover">
                                            <img src = "images/dish_restrictions/Milk.png" width="50" height="50" class = "img">
                                            <label class = "label">Молоко</label>
                                        </div>
                                        <div class = "checkbox checkbox_restriction checkbox_restriction_hover">
                                            <img src = "images/dish_restrictions/Eggs.png" width="50" height="50" class = "img">
                                            <label class = "label">Яйця</label>
                                        </div>
                                        <div class = "checkbox checkbox_restriction checkbox_restriction_hover">
                                            <img src = "images/dish_restrictions/Pork.png" width="50" height="50" class = "img">
                                            <label class = "label">Свинина</label>
                                        </div>
                                        <div class = "checkbox checkbox_restriction checkbox_restriction_hover">
                                            <img src = "images/dish_restrictions/Fish.png" width="50" height="50" class = "img">
                                            <label class = "label">Риба</label>
                                        </div>
                                        <div class = "checkbox checkbox_restriction checkbox_restriction_hover">
                                            <img src = "images/dish_restrictions/Orange.png" width="50" height="50" class = "img">
                                            <label class = "label">Цитрусові</label>
                                        </div>
                                        <div class = "checkbox checkbox_restriction checkbox_restriction_hover">
                                            <img src = "images/dish_restrictions/Alcohol.png" width="50" height="50" class = "img">
                                            <label class = "label">Алкоголь</label>
                                        </div>
                                    </div>
                                </div>
                                <div class = "block_find_a_recipe">
                                    <div class = "find_a_recipe">
                                        <span class = "button_find_a_recipe button_find_a_recipe_1">Знайти рецепт</span>
                                    </div>
                                </div>
                            </div>
                            <div class = "block block_search block_products block_no_state_active">
                                <div class = "products_type">
                                    <div class = "product_type_item" data-group = "meat">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Meat.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">М'ясо</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "seafood">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Seafood.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Морепродукти</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "vegetable">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Vegetable.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Овочі</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "dairy_products">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Dairy_products.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Молочні продукти</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "bread">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Bread.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Хліб та інше</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "macaroni">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Macaroni.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Макарони та крупи</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "flour">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Flour.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Борошно та спеції</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "canned_food">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Сanned_food.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Консерви</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "mushroom">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Mushroom.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Гриби</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "fruit">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Fruit.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Фрукти</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "drinks">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Drinks.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Напої</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "green">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Green.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Зелень</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "sauce">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Sauce.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Соуси</label>
                                    </div>
                                    <div class = "product_type_item" data-group = "other">
                                        <div class = "img_div"><img src = "images/Search_by_ingredients/Other.png" width="50" height="50" class = "img"></div>
                                        <label class = "label">Інше</label>
                                    </div>
                                </div>
                                <div class = "products">
                                    <figure class = "ingredient" data-group = "meat" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Баранина</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Бекон</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Індичка (грудка)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Індичка (крильця)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Індичка (ніжки)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Індичка (повністю)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Індичка (стегенце)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Індичка (фарш)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Курка (грудка)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Курка (крильця)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Курка (ніжки)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Курка (повністю)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Курка (стегенце)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Курка (фарш)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Курка (філе)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сало</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Свинина</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Свинина (вирізка)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Свинина (серце)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Свинина (фарш)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Яловичина (печінка)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Яловичина (фарш)</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "seafood" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Анчоуси</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Ікра мойви</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Ікра осетрова</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Ікра чорна</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Камбала свіжа</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Крабове м'ясо</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Креветки свіжі</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Лосось (філе)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Оселедець</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "vegetable" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Баклажан</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Брокколі</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Буряк</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Імбир (корінь)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кабачок</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Капуста</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Картопля</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кукурудза</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Морква</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Огірок</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Перець (солодкий)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Перець (чілі)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Помідор</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Редис</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Цибуля</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Часник</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "dairy_products" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вершки</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Йогурт</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кефір</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Масло вершкове</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Масло шоколадне</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Молоко</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Молоко знежирене</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Молоко козине</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Морозиво</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сир кисломолочний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сир Моцарелла</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сир Пармезан</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сир плавлений</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сметана</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "bread" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Багет</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Батон нарізний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Булочки для гамбургерів</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Лаваш вірменський</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Лаваш кавказький</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сухарики з білого хліба</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сухарики житні</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Хліб білий (пшеничний)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Хліб кукурудзяний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Хліб сірий (житньо-пшеничний)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Хліб чорний (бородинський)</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "macaroni" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вермішель</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вівсяні пластівці</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Гречка</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кукурудзяна крупа</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Мак</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Макарони</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Пшенична крупа</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Рис</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Рожки</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Спагетті</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "flour" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Борошно кукурудзяне</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Борошно мигдальне</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Борошно пшеничне</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Ванілін</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Дріжді</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Желатин</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Какао-порошок</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кокосова стружка</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кориця</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Крохмаль картопляний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Крохмаль кукурудзяний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кунжут</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сіль</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Сода харчова</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Цукор-пісок</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Цукор-рафінад</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Цукор тростинний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Цукрова пудра</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "canned_food" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Ананас (консерва)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вареня вишневе</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вареня інжирне</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Горох заморожений</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Горох (консерва)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Джем абрикосовий</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Джем апельсиновий</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Джем чорничний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Квасоля біла (консерва)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Квасоля в томатному соусі</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кукурудза (кончерва)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Маслини</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Мед</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Мідії консервовані</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Молоко горіхове (мигдальне)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Молоко кокосове</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Огірки корнішони мариновані</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Оливки</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Повидло абрикосове</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Повидло сливове</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Свиняча тушонка</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Томат маринований</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "mushroom" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Білий гриб</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Маслюк звичайний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Опеньок осінній</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Печериці заморожені</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Печериці свіжі</label>
                                        </div>											<div>
                                        <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                        <label class = "ingredient_check_mark_label">Підберезовик</label>
                                    </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "fruit" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Авокадо</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Ананас (консерва)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Апельсин</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Банан</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Виноград</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Гранат</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Грейпфрут</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Груша</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Клубника</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Клюква</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Лайм</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Лимон</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Малина</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Манго</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Мандарин</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Персик</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Помело</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Чорниця</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Яблуко зелене</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Яблуко червоне</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "drinks" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Ананасовий сік</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Апельсиновий сік</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вино біле напівсолодке</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вино біле сухе</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вино червоне сухе</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Гранатовий сік</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Лаймовий сік</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Лимонний сік</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Пиво світле</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Пиво темне</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Ром</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Фруктовий сік</label>
                                        </div>												<div>
                                        <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                        <label class = "ingredient_check_mark_label">Яблучний сік</label>
                                    </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Яблучний сидр</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "green" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Базилік свіжий</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Горох зелений</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Квасоля зелена стручкова</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кріп</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">М'ята свіжа</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Петрушка</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Соя (паростки)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Цибуля зелена</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Шпинат</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "sauce" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Аджика</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Васабі</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Гірчиця</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кетчуп</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Кокосовий соус</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Майонез</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Оцет</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Соус рибний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Соус соєвий</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Соус Табаско</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Соус чілі</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Томатна паста</label>
                                        </div>
                                    </figure>
                                    <figure class = "ingredient" data-group = "other" style = "display: none;">
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Вода</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Квас хлібний</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Лід</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Маргарин</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Масло кокосове</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Олія</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Соя (боби)</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Чіпси</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Шоколад</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Шоколад білий</label>
                                        </div>
                                        <div>
                                            <div class = "ingredient_check_mark"><img src = "images/check_mark.png" class = "ingredient_check_mark_img"></div>
                                            <label class = "ingredient_check_mark_label">Яйце куряче</label>
                                        </div>
                                    </figure>
                                </div>
                                <div class = "block_find_a_recipe">
                                    <div class = "find_a_recipe">
                                        <span class = "button_find_a_recipe button_find_a_recipe_2">Знайти рецепт</span>
                                    </div>
                                </div>
                            </div>
                            <div class = "block block_search block_no_state_active">
                                <div class = "search">
                                    <input type = "text" class = "search_string" placeholder="Пошук за назвою">
                                </div>
                                <div class = "block_find_a_recipe">
                                    <div class = "find_a_recipe">
                                        <span class = "button_find_a_recipe button_find_a_recipe_3">Знайти рецепт</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class = "layout layout_state_active layout_no_state_active qqq_1">
                        <div class = "layout__inner">
                            <span class = "name name_one">Підібрані страви</span>
                            <div class = "block block_result">
                                <div class = "result">
                                    <ul class = "recipe-list">
                                        <li class = "recipe-list_item">
                                            <div class = "recipe_picture">
                                                <a href = "recipe.html" class = "recipe_link"><img src = "images/dishes/borshch.jpg" class = "recipe_img"></a>
                                            </div>
                                            <div class = "recipe_text">
                                                <a href = "recipe.html" class = "recipe_link"><span class = "recipe_title">Борщ із сметаною</span></a>
                                                <div class = "recipe_characteristic">
                                                    <span class="characteristic characteristic_time">Час приготування: 1год 30хв</span>
                                                    <span class="characteristic characteristic_complexity">Складність страви: Важко</span>
                                                    <span class="characteristic characteristic_Kcal">Ккал: 700</span>
                                                </div>
                                                <div class = "recipe_nutrients">
                                                    <span class="nutrients proteins">Білки: 13</span>
                                                    <span class="nutrients fats">Жири: 10</span>
                                                    <span class="nutrients carbohydrates">Вуглеводи: 17</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class = "layout layout_state_active layout_no_state_active qqq_2">
                        <div class = "layout__inner">
                            <span class = "name name_one">Підібрані страви</span>
                            <div class = "block block_result">
                                <div class = "result">
                                    <ul class = "recipe-list">
                                        <li class = "recipe-list_item">
                                            <div class = "recipe_picture">
                                                <a href = "recipe_macaroni.html" class = "recipe_link"><img src = "images/dishes/macaroni.jpg" class = "recipe_img"></a>
                                            </div>
                                            <div class = "recipe_text">
                                                <a href = "recipe_macaroni.html" class = "recipe_link"><span class = "recipe_title">Макарони</span></a>
                                                <div class = "recipe_characteristic">
                                                    <span class="characteristic characteristic_time">Час приготування: 25хв</span>
                                                    <span class="characteristic characteristic_complexity">Складність страви: Легко</span>
                                                    <span class="characteristic characteristic_Kcal">Ккал: 500</span>
                                                </div>
                                                <div class = "recipe_nutrients">
                                                    <span class="nutrients proteins">Білки: 20</span>
                                                    <span class="nutrients fats">Жири: 17</span>
                                                    <span class="nutrients carbohydrates">Вуглеводи: 19</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class = "layout layout_state_active layout_no_state_active qqq_3">
                        <div class = "layout__inner">
                            <span class = "name name_one">Підібрані страви</span>
                            <div class = "block block_result">
                                <div class = "result">
                                    <ul class = "recipe-list">
                                        <li class = "recipe-list_item">
                                            <div class = "recipe_picture">
                                                <a href = "recipe.html" class = "recipe_link"><img src = "images/dishes/buckwheat.jpg" class = "recipe_img"></a>
                                            </div>
                                            <div class = "recipe_text">
                                                <a href = "recipe.html" class = "recipe_link"><span class = "recipe_title">Гречка</span></a>
                                                <div class = "recipe_characteristic">
                                                    <span class="characteristic characteristic_time">Час приготування: 40хв</span>
                                                    <span class="characteristic characteristic_complexity">Складність страви: Легко</span>
                                                    <span class="characteristic characteristic_Kcal">Ккал: 200</span>
                                                </div>
                                                <div class = "recipe_nutrients">
                                                    <span class="nutrients proteins">Білки: 43</span>
                                                    <span class="nutrients fats">Жири: 32</span>
                                                    <span class="nutrients carbohydrates">Вуглеводи: 17</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class = "layout">
                        <span class = "name name_one">Популярні страви</span>
                        <div class = "block block_popular">
                            <div class = "dish">
                                <a href = "recipe.html" class = "dish_link">
                                    <img src = "images/dishes/borshch.jpg" class = "img_dish">
                                    <span class = "name_dish">Борщ із сметаною</span>
                                </a>
                            </div>
                            <div class = "dish">
                                <a href = "recipe_macaroni.html" class = "dish_link">
                                    <img src = "images/dishes/macaroni.jpg" class = "img_dish">
                                    <span class = "name_dish">Макарони</span>
                                </a>
                            </div>
                            <div class = "dish">
                                <a href = "recipe.html" class = "dish_link">
                                    <img src = "images/dishes/eggs.jpg" class = "img_dish">
                                    <span class = "name_dish">Яєчня</span>
                                </a>
                            </div>
                            <div class = "dish">
                                <a href = "recipe.html" class = "dish_link">
                                    <img src = "images/dishes/buckwheat.jpg" class = "img_dish">
                                    <span class = "name_dish">Гречка</span>
                                </a>
                            </div>
                            <div class = "dish">
                                <a href = "recipe.html" class = "dish_link">
                                    <img src = "images/dishes/oatmeal.jpg" class = "img_dish">
                                    <span class = "name_dish">Вівсяна каша на молоці</span>
                                </a>
                            </div>
                            <div class = "dish">
                                <a href = "recipe.html" class = "dish_link">
                                    <img src = "images/dishes/apple_pie.jpg" class = "img_dish">
                                    <span class = "name_dish">Яблучний пиріг</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class = "wrapper">
            <div class = "footer_content">
                <div class = "logo_cat">
                    <img src = "images/Cat.png" class = "cat_img">
                </div>
            </div>
        </div>
    </footer>
</div>
</body>
<script type="text/javascript" src="js/script.js"></script>

</html>