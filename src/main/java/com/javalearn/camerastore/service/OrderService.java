package com.javalearn.camerastore.service;

import com.javalearn.camerastore.entity.Order;
import com.javalearn.camerastore.request.OrderRequest;
import com.javalearn.camerastore.request.ProductRequest;

import java.util.List;

public interface OrderService {
    List<Order> getOrder();

    OrderRequest save(OrderRequest orderRequest);

}
