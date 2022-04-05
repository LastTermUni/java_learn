package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Brand;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BrandRepository extends JpaRepository<Brand, Long> {
    Brand findOneById(Long id);
}
