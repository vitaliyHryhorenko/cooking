package com.cooking.repository;

import com.cooking.model.Recipe;
import org.springframework.data.repository.CrudRepository;

public interface RecipeRepo extends CrudRepository<Recipe, Integer> {
    Recipe getRecipeByRecipeId(Integer recipeId);
}
