package com.cooking.dao;

import com.cooking.model.Ingredient;

import java.util.List;

public interface IngredientDao {
    List<Ingredient> getByRecipeId(Integer recipeId);

    void add(Ingredient ingredient);

}
