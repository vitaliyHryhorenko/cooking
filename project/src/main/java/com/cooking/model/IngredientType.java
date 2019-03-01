package com.cooking.model;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "ingredient_type")
public class IngredientType {
    @Id
    @Column(name = "ingredient_type_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer ingredientTypeId;

    @Column(name = "name_ingredient_type")
    private String nameIngredientType;

    @OneToMany(mappedBy = "ingredientTypeId")
    private Set<Ingredient> ingredients = new HashSet<>();

    public IngredientType() {
    }

    public Integer getIngredientTypeId() {
        return ingredientTypeId;
    }


    public void setIngredientTypeId(Integer ingredientTypeId) {
        this.ingredientTypeId = ingredientTypeId;
    }

    public String getNameIngredientType() {
        return nameIngredientType;
    }

    public void setNameIngredientType(String nameIngredientType) {
        this.nameIngredientType = nameIngredientType;
    }

    public Set<Ingredient> getIngredients() {
        return ingredients;
    }

    public void setIngredients(Set<Ingredient> ingredients) {
        this.ingredients = ingredients;
    }
}
