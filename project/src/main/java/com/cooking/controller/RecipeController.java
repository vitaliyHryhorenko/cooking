package com.cooking.controller;

import com.cooking.model.Recipe;
import com.cooking.service.RecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class RecipeController {

    private RecipeService recipeService;

    @Autowired
    public RecipeController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }

    @GetMapping("/recipe/{recipeId}")
    public String getRecipe(@PathVariable(name = "recipeId") Integer recipeId, Model model) {
        Recipe recipe = recipeService.getById(recipeId);
        if (recipe != null) {
            model.addAttribute(recipe);
        }
        return "recipe";
    }

    @GetMapping("/admin/recipe/add")
    public String addRecipe(@ModelAttribute Recipe recipe) {
        return "add_recipe";
    }
}
