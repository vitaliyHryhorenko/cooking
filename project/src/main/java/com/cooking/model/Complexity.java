package com.cooking.model;

import javax.persistence.*;

@Entity
@Table(name = "complexity")
public class Complexity {

    @Id
    @Column(name = "complexity_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer complexityId;

    @Column(name = "name_complexity")
    private String nameComplexity;

    public Complexity() {
    }

    public Integer getComplexityId() {
        return complexityId;
    }

    public void setComplexityId(Integer complexityId) {
        this.complexityId = complexityId;
    }

    public String getNameComplexity() {
        return nameComplexity;
    }

    public void setNameComplexity(String nameComplexity) {
        this.nameComplexity = nameComplexity;
    }
}
