package com.cooking.dao.impl;

import com.cooking.dao.IngredientDao;
import com.cooking.model.Ingredient;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Set;

@Repository
@Transactional
public class IngredientDaoImpl implements IngredientDao {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Ingredient> getByRecipeId(Integer recipeId) {
        TypedQuery<Ingredient> q = entityManager.createQuery(
                "select distinct i from Ingredient i join i.recipes recipe where recipe.recipeId = :id", Ingredient.class
        );
        q.setParameter("id", recipeId);
        return q.getResultList();
    }

    @Override
    public void add(Ingredient ingredient) {
        entityManager.persist(ingredient);
    }
}
