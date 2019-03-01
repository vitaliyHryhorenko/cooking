package com.cooking.dao.impl;

import com.cooking.dao.IngredientDao;
import com.cooking.dao.RecipeDao;
import com.cooking.model.Complexity;
import com.cooking.model.Ingredient;
import com.cooking.model.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.LinkedHashSet;
import java.util.Set;

@Repository
@Transactional
public class RecipeDaoImpl implements RecipeDao {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Recipe getById(Integer recipeId) {
        TypedQuery<Recipe> q = entityManager.createQuery(
                "select r from Recipe r where r.recipeId = :id", Recipe.class
        );
        q.setParameter("id", recipeId);
        return q.getResultList().stream().findAny().orElse(null);
    }

}
