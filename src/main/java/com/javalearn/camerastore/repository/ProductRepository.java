package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
