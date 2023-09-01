package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.entity.Products;
@Repository
public interface ProductDAO extends JpaRepository<Products, String>{

//    List<Products> findAllByOrderByproductNameAsc();
//
//    List<Products> findAllByOrderByproductNameDesc();

    List<Products> findAllByOrderByPriceAsc();

    List<Products> findAllByOrderByPriceDesc();
    
    @Query("SELECT o FROM Products o WHERE o.productId=:productId ")
    Products findProductById(@Param("productId") String productId);
}
