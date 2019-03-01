package com.cooking.service.impl;

import com.cooking.dao.RecipeDao;
import com.cooking.model.Recipe;
import com.cooking.repository.RecipeRepo;
import com.cooking.service.RecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecipeServiceImpl implements RecipeService {

    @Autowired RecipeRepo recipeRepo;
    @Autowired RecipeDao recipeDao;

    public Recipe getById(Integer recipeId) {
        return recipeRepo.getRecipeByRecipeId(recipeId);
    }
}
