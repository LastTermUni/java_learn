package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.OrderDetails;
import com.javalearn.camerastore.repository.OrderDetailsRepository;
import com.javalearn.camerastore.service.OrderDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailsServiceImpl implements OrderDetailsService {
    @Autowired
    OrderDetailsRepository orderDetailsRepository;

    @Override
    public List<OrderDetails> getOrderDetails() {
        return orderDetailsRepository.findAll();
    }

    @Override
    public OrderDetails save(OrderDetails orderDetails) {
        return orderDetailsRepository.save(orderDetails);
    }
}
