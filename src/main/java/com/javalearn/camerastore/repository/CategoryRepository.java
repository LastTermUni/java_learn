package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    Category findOneById(long id);
}
