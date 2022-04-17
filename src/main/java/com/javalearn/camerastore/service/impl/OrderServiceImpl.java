package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Customer;
import com.javalearn.camerastore.entity.Order;
import com.javalearn.camerastore.repository.CustomerRepository;
import com.javalearn.camerastore.repository.OrderRepository;
import com.javalearn.camerastore.request.OrderRequest;
import com.javalearn.camerastore.service.CustomerService;
import com.javalearn.camerastore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderRepository orderRepository;

    @Autowired
    CustomerRepository customerRepository;

    @Override
    public List<Order> getOrder() {
        return orderRepository.findAll();
    }

    @Override
    public OrderRequest save(OrderRequest orderRequest) {
//        Order order = new Order();
//        Customer customer = customerRepository.findCustomerByMaKH(orderRequest.getMaKH());
//        order.setDiachi(orderRequest.getDiachi());
//        order.setStatus(orderRequest.getStatus());
//        order.setTongtien(orderRequest.getTongtien());
//        order.setCustomer(customer);
//        order = orderRepository.save(order);
//        System.out.println( "Ma don hang: "+order.getMadh());
//        return orderRequest;
        return null;
    }
}
