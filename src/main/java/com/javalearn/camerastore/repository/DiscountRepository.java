package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Discount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DiscountRepository extends JpaRepository<Discount, Long> {
    Discount findOneById(long id);
}
