package com.javalearn.camerastore.controller.paypal;

import com.javalearn.camerastore.entity.Order;
import com.javalearn.camerastore.entity.OrderDetails;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.request.Cart;
import com.javalearn.camerastore.request.OrderRequest;
import com.javalearn.camerastore.service.OrderDetailsService;
import com.javalearn.camerastore.service.OrderService;
import com.javalearn.camerastore.service.impl.PaypalService;
import com.javalearn.camerastore.utils.Utils;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;

@Controller
public class PaymentController {
    public static final String URL_PAYPAL_SUCCESS = "pay/success";
    public static final String URL_PAYPAL_CANCEL = "pay/cancel";
    private static final DecimalFormat df = new DecimalFormat("0.00");
    private final Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    private PaypalService paypalService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private OrderDetailsService orderDetailsService;

    //Hàm này dùng để khởi tạo links tới server paypal
    @PostMapping("/pay")
    public String pay(HttpServletRequest request, @RequestParam("address") String address, HttpSession session){
        String cancelUrl = Utils.getBaseURL(request) + "/" + URL_PAYPAL_CANCEL;
        String successUrl = Utils.getBaseURL(request) + "/" + URL_PAYPAL_SUCCESS;
        double price = (double) session.getAttribute("totalPrice");
        price = price/23000;
        price = new BigDecimal(price).setScale(2, RoundingMode.HALF_UP).doubleValue();
        String priceUSD = String.valueOf(price);
        session.setAttribute("address", address);

        try {
            Payment payment = paypalService.createPayment(
                    priceUSD,
                    "USD",
                    "paypal",
                    "sale",
                    "payment description",
                    cancelUrl,
                    successUrl);
            for(Links links : payment.getLinks()){
                if(links.getRel().equals("approval_url")){
                    return "redirect:" + links.getHref();
                }
            }
        } catch (PayPalRESTException e) {
            log.error(e.getMessage());
        }
        return "redirect:/checkout";
    }

    //Page cancel khi thanh toán lỗi
    @GetMapping(URL_PAYPAL_CANCEL)
    public String cancelPay(){
        return "paypal/cancel";
    }

    //Page cancel khi thanh toán thành công
    @GetMapping(URL_PAYPAL_SUCCESS)
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId, HttpSession session){
        try {

            Payment payment = paypalService.executePayment(paymentId, payerId);
            if(payment.getState().equals("approved")){
                HashMap<Long, Cart> list = (HashMap<Long, Cart>) session.getAttribute("cartList");
                OrderRequest orderRequest = new OrderRequest();
                orderRequest.setMakh((Long) session.getAttribute("customer"));
                orderRequest.setDiachi((String) session.getAttribute("address"));
                orderRequest.setTongtien((Double) session.getAttribute("totalPrice"));
                orderRequest.setStatus(2L);
                orderService.save(orderRequest, list);

                return "paypal/success";
            }
        } catch (PayPalRESTException e) {
            log.error(e.getMessage());
        }
        return "redirect:/payment";
    }
}
