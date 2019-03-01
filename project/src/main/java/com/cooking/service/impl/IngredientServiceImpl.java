package com.cooking.service.impl;

import com.cooking.dao.IngredientDao;
import com.cooking.model.Ingredient;
import com.cooking.repository.IngredientRepo;
import com.cooking.service.IngredientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IngredientServiceImpl implements IngredientService {

    private IngredientDao ingredientDao;
    private IngredientRepo ingredientRepo;

    @Autowired
    public IngredientServiceImpl(IngredientDao ingredientDao, IngredientRepo ingredientRepo) {
        this.ingredientDao = ingredientDao;
        this.ingredientRepo = ingredientRepo;
    }

    @Override
    public void add(Ingredient ingredient) {
//        ingredientDao.add(ingredient);
        ingredientRepo.save(ingredient);
    }
}
