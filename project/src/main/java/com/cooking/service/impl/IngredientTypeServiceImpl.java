package com.cooking.service.impl;

import com.cooking.dao.IngredientTypeDao;
import com.cooking.model.IngredientType;
import com.cooking.service.IngredientTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IngredientTypeServiceImpl implements IngredientTypeService {
    @Autowired
    private IngredientTypeDao ingredientTypeDao;

    @Override
    public void add(IngredientType ingredientType) {
        ingredientTypeDao.add(ingredientType);
    }
}
