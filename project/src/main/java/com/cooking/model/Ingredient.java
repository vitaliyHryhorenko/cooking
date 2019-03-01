package com.cooking.model;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "ingredient")
public class Ingredient {
    @Id
    @Column(name = "ingredient_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer ingredientId;

    @Column(name = "name_ingredient")
    private String nameIngredient;

    @ManyToOne
    @JoinColumn(name = "ingredient_type_id")
    private IngredientType ingredientTypeId;

    @ManyToMany(mappedBy = "ingredients")
    private Set<Recipe> recipes = new HashSet<>();

    public Ingredient() {
    }

    public Integer getIngredientId() {
        return ingredientId;
    }

    public void setIngredientId(Integer ingredientId) {
        this.ingredientId = ingredientId;
    }

    public String getNameIngredient() {
        return nameIngredient;
    }

    public void setNameIngredient(String nameIngredient) {
        this.nameIngredient = nameIngredient;
    }


    public IngredientType getIngredientTypeId() {
        return ingredientTypeId;
    }

    public void setIngredientTypeId(IngredientType ingredientTypeId) {
        this.ingredientTypeId = ingredientTypeId;
    }
}
