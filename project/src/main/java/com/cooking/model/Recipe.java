package com.cooking.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

@Entity
@Table(name = "recipe")
public class Recipe {
    @Id
    @Column(name = "recipe_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer recipeId;

    @Column(name = "name_recipe")
    private String nameRecipe;

    @Column(name = "text_recipe", length = 3000)
    private String textRecipe;

    @Column(name = "description", length = 1000)
    private String description;

    @Column(name = "cooking_time")
    private Integer cookingTime;

    @Column(name = "kcal")
    private Integer kcal;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "complexity_id")
    private Complexity complexityId;

    @Column(name = "small_logo")
    private String smallLogo;

    @Column(name = "big_logo")
    private String bidLogo;

    @Column(name = "proteins")
    private Integer proteins;

    @Column(name = "fats")
    private Integer fats;

    @Column(name = "carbohydrates")
    private Integer carbohydrates;

    @ManyToMany(cascade = {CascadeType.ALL})
    @JoinTable(name = "recipe_ingredient",
            joinColumns = @JoinColumn(name = "recipe_id"),
            inverseJoinColumns = @JoinColumn(name = "ingredient_id")
    )
    private Set<Ingredient> ingredients = new LinkedHashSet<>();

    @ManyToOne
    @JoinColumn(name = "recipe_type_id")
    private RecipeType recipeTypeId;

    public Recipe() {
    }

    public Integer getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(Integer recipeId) {
        this.recipeId = recipeId;
    }

    public String getNameRecipe() {
        return nameRecipe;
    }

    public void setNameRecipe(String nameRecipe) {
        this.nameRecipe = nameRecipe;
    }

    public String getTextRecipe() {
        return textRecipe;
    }

    public void setTextRecipe(String textRecipe) {
        this.textRecipe = textRecipe;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getCookingTime() {
        return cookingTime;
    }

    public void setCookingTime(Integer cookingTime) {
        this.cookingTime = cookingTime;
    }

    public Integer getKcal() {
        return kcal;
    }

    public void setKcal(Integer kcal) {
        this.kcal = kcal;
    }

    public Complexity getComplexityId() {
        return complexityId;
    }

    public void setComplexityId(Complexity complexityId) {
        this.complexityId = complexityId;
    }

    public String getSmallLogo() {
        return smallLogo;
    }

    public void setSmallLogo(String smallLogo) {
        this.smallLogo = smallLogo;
    }

    public String getBidLogo() {
        return bidLogo;
    }

    public void setBidLogo(String bidLogo) {
        this.bidLogo = bidLogo;
    }

    public Integer getProteins() {
        return proteins;
    }

    public void setProteins(Integer proteins) {
        this.proteins = proteins;
    }

    public Integer getFats() {
        return fats;
    }

    public void setFats(Integer fats) {
        this.fats = fats;
    }

    public Integer getCarbohydrates() {
        return carbohydrates;
    }

    public void setCarbohydrates(Integer carbohydrates) {
        this.carbohydrates = carbohydrates;
    }

    public Set<Ingredient> getIngredients() {
        return ingredients;
    }

    public void setIngredients(Set<Ingredient> ingredients) {
        this.ingredients = ingredients;
    }

    public RecipeType getRecipeTypeId() {
        return recipeTypeId;
    }

    public void setRecipeTypeId(RecipeType recipeTypeId) {
        this.recipeTypeId = recipeTypeId;
    }
}
