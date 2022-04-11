package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Brand;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BrandRepository extends JpaRepository<Brand, Long> {
    @Query("SELECT v FROM Brand v where v.status = 1")
    List<Brand> getAllByStatus();

    Brand findOneById(Long id);
}
