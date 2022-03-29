package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.AdminEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface AdminRepository extends JpaRepository<AdminEntity, Long> {
    @Query("SELECT u FROM AdminEntity u WHERE u.username = :username")
    public AdminEntity getUserByUsername(@Param("username") String username);
}
