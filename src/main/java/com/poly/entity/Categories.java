package com.poly.entity;
import java.io.Serializable;
import jakarta.persistence.*;
import lombok.Data;


@Entity
@Table(name = "Categories")
@Data
public class Categories implements Serializable {
    @Id
    @Column(name = "category_id", length = 30)
    private String categoryId;

    @Column(name = "category_name", nullable = false, length = 100)
    private String categoryName;

    // Constructors, getters, setters
}

