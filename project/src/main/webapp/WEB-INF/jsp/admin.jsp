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
                <a href = "admin.html"><img src = "http://localhost:8080/images/Logo1.png"></a>
            </div>
            <div class = "slogan">
                Рецепти за інгредієнтами
            </div>
            <div class = "menu">
                <div class = "search">
                    <input type = "text" id = "text" placeholder = "Пошук...">
                    <button class = "icon"><img src = "images/Icon_Search.png"></button>
                </div>
                <div class = "button_enter">
                    <a href = "enter.html"><input type = "button" value = "Вийти з облікового запису"></a>
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
                            <span class = "name name_one">Сторінка адміна</span>
                            <div class = "block block_admin">
                                <div class = "result">
                                    <div class = "menu_blocks">
                                        <div class = "block_admin_menu">
                                            <img src = "images/admin/new_recipe.jpg" class = "image_admin_menu"/>
                                            <div class = "text_admin_menu">
                                                Додати нову страву
                                            </div>
                                        </div>
                                        <div class = "block_admin_menu">
                                            <img src = "images/admin/new_ingredient.jpg" class = "image_admin_menu"/>
                                            <div class = "text_admin_menu">
                                                Додати групу інгредієнтів
                                            </div>
                                        </div>
                                        <div class = "block_admin_menu">
                                            <img src = "images/admin/change_recipe.jpg" class = "image_admin_menu"/>
                                            <div class = "text_admin_menu">
                                                Змінити страву
                                            </div>
                                        </div>
                                        <div class = "block_admin_menu">
                                            <img src = "images/admin/change_ingredient.jpg" class = "image_admin_menu"/>
                                            <div class = "text_admin_menu">
                                                Змінити групу інгредієнтів
                                            </div>
                                        </div>
                                    </div>
                                    <div class = "add_new_ingredient">
                                        <form action = "/admin/ingredientType/add" method="post" class = "form_new_ingredient">
                                            <div class = "group_name">Назва групи:</div>
                                            <input type="text" name="nameIngredientType"/>
                                            <div class = "">Добавити список інгредієнтів:</div>
                                            <input type="text" name="nameIngredient" class = "list_ingredient"/>
                                            <%--<input type="text" name="nameIngredient2" class = "list_ingredient"/>--%>
                                            <%--<input type="text" name="nameIngredient3" class = "list_ingredient"/>--%>
                                            <%--<input type="text" name="nameIngredient4" class = "list_ingredient"/>--%>
                                            <%--<input type="text" name="nameIngredient5" class = "list_ingredient"/>--%>
                                            <input type="submit" value="Додати" class = "button"/>
                                        </form>
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
                    <img src = "images/Cat.png" class = "cat_img">
                </div>
            </div>
        </div>
    </footer>
</div>
</body>
<script type="text/javascript" src="js/script_admin_2.js"></script>
</html>