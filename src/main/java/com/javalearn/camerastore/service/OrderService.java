package com.javalearn.camerastore.service;

import com.javalearn.camerastore.entity.Order;
import com.javalearn.camerastore.request.Cart;
import com.javalearn.camerastore.request.OrderRequest;
import com.javalearn.camerastore.request.ProductRequest;

import java.util.HashMap;
import java.util.List;

public interface OrderService {
    List<Order> getOrder();

    void save(OrderRequest orderRequest, HashMap<Long, Cart> list);



}
