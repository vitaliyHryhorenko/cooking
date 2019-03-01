package com.cooking.controller;

import com.cooking.model.Ingredient;
import com.cooking.model.IngredientType;
import com.cooking.service.IngredientService;
import com.cooking.service.IngredientTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class IngredientTypeController {

    private IngredientTypeService ingredientTypeService;
    private IngredientService ingredientService;

    @Autowired
    public IngredientTypeController(IngredientTypeService ingredientTypeService, IngredientService ingredientService) {
        this.ingredientTypeService = ingredientTypeService;
        this.ingredientService = ingredientService;

    }

    @PostMapping("/admin/ingredientType/add")
    public String addTypeIngredient(@ModelAttribute IngredientType ingredientType,
                                    @ModelAttribute Ingredient ingredient
                                    /*@ModelAttribute Ingredient ingredient2,
                                    @ModelAttribute Ingredient ingredient3,
                                    @ModelAttribute Ingredient ingredient4,
                                    @ModelAttribute Ingredient ingredient5*/) {
        Set<Ingredient> ingredients = new HashSet<>();
        Ingredient ingr = new Ingredient();
        ingr = ingredient;
        ingr.setIngredientTypeId(ingredientType);

        if (ingredient != null) ingredientService.add(ingr);
//        if (ingredient2 != null) ingredientService.add(ingredient2);
//        if (ingredient3 != null) ingredientService.add(ingredient3);
//        if (ingredient4 != null) ingredientService.add(ingredient4);
//        if (ingredient5 != null) ingredientService.add(ingredient5);

        if (ingredientType != null) ingredientTypeService.add(ingredientType);

        return "admin";
    }
}
