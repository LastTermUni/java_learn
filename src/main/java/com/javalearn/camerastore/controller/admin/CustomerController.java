package com.javalearn.camerastore.controller.admin;

import com.javalearn.camerastore.model.Customer;
import com.javalearn.camerastore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/customer")
    public List<Customer> getcustomer(){
        return customerService.getCustomer();
    }

    @PostMapping("/customer")
    public Customer addcustomer(@RequestBody Customer customer){
        return customerService.saveCustomer(customer);
    }

}
