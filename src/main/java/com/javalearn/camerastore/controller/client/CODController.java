package com.javalearn.camerastore.controller.client;

import com.javalearn.camerastore.request.Cart;
import com.javalearn.camerastore.request.OrderRequest;
import com.javalearn.camerastore.service.OrderService;
import com.javalearn.camerastore.service.impl.PaypalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;


@Controller
public class CODController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/COD")
    public String COD(@RequestParam("address") String address, HttpSession session)
    {
        HashMap<Long, Cart> list = (HashMap<Long, Cart>) session.getAttribute("cartList");
        OrderRequest orderRequest = new OrderRequest();
        orderRequest.setMakh((Long) session.getAttribute("customer"));
        orderRequest.setDiachi(address);
        orderRequest.setTongtien((Double) session.getAttribute("totalPrice"));
        orderRequest.setStatus(1L);
        orderService.save(orderRequest, list);

        list = null;
        session.setAttribute("cartList", list);
        session.setAttribute("totalPrice", null);
        session.setAttribute("cartNum", null);

        return "paypal/success";
    }

}
