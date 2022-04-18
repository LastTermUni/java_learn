package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.OrderDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDetailsRepository extends JpaRepository<OrderDetails, Long> {
    @Query("SELECT v from OrderDetails v where v.order.madh = :id")
    List<OrderDetails> findByMaDH(Long id);
}
