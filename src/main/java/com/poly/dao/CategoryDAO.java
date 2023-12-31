package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.poly.entity.Categories;

@Repository
public interface CategoryDAO extends JpaRepository<Categories, String>{

}
