package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.entity.Users;
@Repository
public interface UserDAO extends JpaRepository<Users, String>{
	 @Query("SELECT o FROM Users o WHERE o.userId=:userId ")
	    Users finduserById(@Param("userId") String userId);
}
