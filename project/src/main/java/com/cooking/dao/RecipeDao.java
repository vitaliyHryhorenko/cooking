package com.cooking.dao;

import com.cooking.model.Recipe;

public interface RecipeDao {
    Recipe getById(Integer recipeId);
}
