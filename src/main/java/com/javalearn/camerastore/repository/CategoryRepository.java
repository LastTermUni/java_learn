package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    @Query("SELECT v FROM Category v where v.status = 1")
    List<Category> getAllByStatus();

    Category findOneById(Long id);
}
