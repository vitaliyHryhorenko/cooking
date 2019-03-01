package com.cooking.dao.impl;

import com.cooking.dao.IngredientTypeDao;
import com.cooking.model.IngredientType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class IngredientTypeDaoImpl implements IngredientTypeDao {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void add(IngredientType ingredientType) {
        entityManager.persist(ingredientType);
    }
}
