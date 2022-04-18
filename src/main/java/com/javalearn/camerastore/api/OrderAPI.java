package com.javalearn.camerastore.api;

import com.javalearn.camerastore.entity.Order;
import com.javalearn.camerastore.entity.OrderDetails;
import com.javalearn.camerastore.service.OrderDetailsService;
import com.javalearn.camerastore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OrderAPI {

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderDetailsService orderDetailsService;

    @GetMapping("/Order")
    public List<Order> getOrder()
    {
        return orderService.getOrder();
    }

    @GetMapping("/OrderDetails")
    public List<OrderDetails> getOrderDetails()
    {
        return orderDetailsService.getOrderDetails();
    }


//    @PostMapping("/AddOrder")
//    public OrderRequest saveOrder(@RequestBody OrderRequest orderRequest)
//    {
//        return orderService.save(orderRequest);
//    }

}
