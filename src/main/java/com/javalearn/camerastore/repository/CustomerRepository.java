package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

    @Query("SELECT u FROM Customer u WHERE u.Username = :username")
    Customer findCustomerByUsername(String username);

    @Query("SELECT v FROM Customer v where v.Email = :email")
    Customer findCustomerByEmail(String email);

}
