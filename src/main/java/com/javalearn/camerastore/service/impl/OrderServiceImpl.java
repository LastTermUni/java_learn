package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Customer;
import com.javalearn.camerastore.entity.Order;
import com.javalearn.camerastore.entity.OrderDetails;
import com.javalearn.camerastore.repository.CustomerRepository;
import com.javalearn.camerastore.repository.OrderRepository;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.request.Cart;
import com.javalearn.camerastore.request.OrderRequest;
import com.javalearn.camerastore.service.CustomerService;
import com.javalearn.camerastore.service.OrderDetailsService;
import com.javalearn.camerastore.service.OrderService;
import com.javalearn.camerastore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderRepository orderRepository;

    @Autowired
    CustomerRepository customerRepository;

    @Autowired
    OrderDetailsService orderDetailsService;

    @Autowired
    ProductRepository productRepository;



    @Override
    public List<Order> getOrder() {
        return orderRepository.findAll();
    }

    @Override
    public void save(OrderRequest orderRequest, HashMap<Long, Cart> list) {
        Order order = new Order();
        Customer customer = customerRepository.findOneByMaKH(orderRequest.getMakh());
//        Customer customer = new Customer();
//        customer.setMaKH(orderRequest.getMaKH());
        System.out.println("Customer ne" + customer);
        order.setDiachi(orderRequest.getDiachi());
        order.setStatus(orderRequest.getStatus());
        order.setTongtien(orderRequest.getTongtien());
        order.setCustomer(customer);

        order = orderRepository.save(order);
        System.out.println( "Ma don hang: "+order.getMadh());

        for(Map.Entry<Long, Cart> cart : list.entrySet()){
            OrderDetails orderDetails = new OrderDetails();
            orderDetails.setProduct(productRepository.findOneById(cart.getKey()));
            orderDetails.setOrder(order);
            orderDetails.setSoluong((long) cart.getValue().getQuantity());
            orderDetails.setTongtien((long) (cart.getValue().getQuantity()*cart.getValue().getProductRequest().getGia()));

            orderDetailsService.save(orderDetails);
        }

    }


}
