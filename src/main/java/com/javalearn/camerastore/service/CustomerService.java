package com.javalearn.camerastore.service;

import com.javalearn.camerastore.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomer();

    Customer saveCustomer(Customer customer);

    Customer updateCustomer(Customer customer);

    void deleteCustomer(int id);
}

