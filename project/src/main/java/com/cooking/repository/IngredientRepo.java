package com.cooking.repository;

import com.cooking.model.Ingredient;
import org.springframework.data.repository.CrudRepository;

public interface IngredientRepo extends CrudRepository<Ingredient, Integer> {

}
