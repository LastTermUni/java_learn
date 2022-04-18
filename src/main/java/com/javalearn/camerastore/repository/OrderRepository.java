package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

    Order findOneByMadh(Long id);

    @Query("SELECT v from Order v where v.customer.MaKH = :id")
    List<Order> findAllByMaKH(Long id);
}
