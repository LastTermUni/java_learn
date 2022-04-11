package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Customer;
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

    @Override
    public Customer updateCustomer(Customer customer) {
        return ecustomerRepository.save(customer);
    }

    @Override
    public void deleteCustomer(Long id) {
        ecustomerRepository.deleteById(id);
    }
}
