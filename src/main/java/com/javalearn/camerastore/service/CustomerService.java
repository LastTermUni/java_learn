package com.javalearn.camerastore.service;

import com.javalearn.camerastore.model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomer();

    Customer saveCustomer(Customer customer);
}

