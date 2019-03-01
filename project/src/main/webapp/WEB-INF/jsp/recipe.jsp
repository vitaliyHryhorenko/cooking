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
                <a href = "http://localhost:8080/"><img src = "http://localhost:8080/images/Logo1.png"></a>
            </div>
            <div class = "slogan">
                Рецепти за інгредієнтами
            </div>
            <div class = "menu">
                <div class = "search">
                    <input type = "text" id = "text" placeholder = "Пошук...">
                    <button class = "icon"><img src = "http://localhost:8080/images/Icon_Search.png"></button>
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
                            <span class = "name name_one">Рецепт</span>
                            <div class = "block block_recipe">
                                <div class = "recipe_name">${recipe.nameRecipe}</div>
                                <div class = "recipe_characteristic">
                                    <c:set var = "time" scope = "session" value = "${recipe.cookingTime}"/>
                                    <span class="characteristic characteristic_time">Час приготування:
                                        <c:if test="${time < 60}">
                                            ${time}хв
                                        </c:if>
                                        <c:if test="${time > 60}">
                                            <fmt:formatNumber value="${time/60}" maxFractionDigits="0"/>год ${time%60}хв
                                        </c:if>
                                    </span>
                                    <span class="characteristic characteristic_complexity">Складність страви: ${recipe.complexityId.nameComplexity}</span>
                                    <span class="characteristic characteristic_Kcal">Ккал: ${recipe.kcal}</span>
                                </div>
                                <div class = "picture">
                                    <img src = "${recipe.bidLogo}" class = "picture_img">
                                </div>
                                <div class = "recipe_text">
                                    <div class = "recipe_ingredients">
                                        <span class = "recipe_text_name">Інгредієнти</span>
                                        <div class = "ingredients">
                                            <c:forEach var="ingredient" items="${recipe.ingredients}">
                                                <div class = "ingredient_name">
                                                    <div class = "check"></div>
                                                    ${ingredient.nameIngredient}
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class = "recipe_description">
                                        <span class = "recipe_text_name">Опис страви</span>
                                        <div class = "description">
                                            ${recipe.description}
                                        </div>
                                    </div>
                                </div>
                                <div class = "recipe_nutrients">
                                    <span class = "recipe_text_name">Поживні речовини</span>
                                    <span class = "nutrients proteins">Білки: ${recipe.proteins}</span>
                                    <span class = "nutrients fats">Жири: ${recipe.fats}</span>
                                    <span class = "nutrients carbohydrates">Вуглеводи: ${recipe.carbohydrates}</span>
                                </div>
                                <div class = "recipe_how to cook">
                                    <span class = "recipe_text_name">Рецепт приготування</span>
                                    <div class = "description">
                                        ${recipe.textRecipe}
                                    </div>
                                </div>
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
                    <img src = "http://localhost:8080/images/Cat.png" class = "cat_img">
                </div>
            </div>
        </div>
    </footer>
</div>
</body>
<script type="text/javascript" src="js/script.js"></script>
</html>