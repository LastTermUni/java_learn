package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.model.Customer;
import com.javalearn.camerastore.repository.CustomerRepository;
import com.javalearn.camerastore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository ecustomerRepository;

    @Override
    public List<Customer> getCustomer() {
        return ecustomerRepository.findAll();
    }

    @Override
    public Customer saveCustomer(Customer customer) {
        return ecustomerRepository.save(customer);
    }
}
