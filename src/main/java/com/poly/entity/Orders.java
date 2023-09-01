package com.poly.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import jakarta.persistence.*;
import lombok.Data;
@Entity
@Table(name = "Orders")
@Data
public class Orders implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private Integer orderId;
    
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    private Users user;
    
    @Column(name = "order_date")
    private Date orderDate;

    @Column(name = "total")
    private long total;
    
    @OneToMany(mappedBy = "orderID")
    private List<Orderdetails> orderDetailsList;
   
    
    // Constructors, getters, setters
}


