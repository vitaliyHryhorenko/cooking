package com.cooking.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "recipe_type")
public class RecipeType {
    @Id
    @Column(name = "recipe_type_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer RecipeTypeId;

    @Column(name = "name_recipe_type")
    private String nameRecipeType;

    @OneToMany(mappedBy = "recipeTypeId")
    private Set<Recipe> recipes = new HashSet<>();

    public RecipeType() {
    }

    public Integer getRecipeTypeId() {
        return RecipeTypeId;
    }

    public void setRecipeTypeId(Integer recipeTypeId) {
        RecipeTypeId = recipeTypeId;
    }

    public String getNameRecipeType() {
        return nameRecipeType;
    }

    public void setNameRecipeType(String nameRecipeType) {
        this.nameRecipeType = nameRecipeType;
    }

    public Set<Recipe> getRecipes() {
        return recipes;
    }

    public void setRecipes(Set<Recipe> recipes) {
        this.recipes = recipes;
    }
}
