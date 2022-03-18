package com.javalearn.camerastore.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("client/home");
        return mav;
    }
    @RequestMapping(value = "/product-detail",method = RequestMethod.GET)
    public ModelAndView productDetail(){
        return new ModelAndView("client/product-detail");
    }
    @RequestMapping(value = "/product",method = RequestMethod.GET)
    public ModelAndView product(){
        return new ModelAndView("client/product");
    }

//    giỏ hàng
    @RequestMapping(value = "/cart",method = RequestMethod.GET)
    public ModelAndView cart(){
        return new ModelAndView("client/cart");
    }

    @RequestMapping(value = "/checkout",method = RequestMethod.GET)
    public ModelAndView checkout(){
        return new ModelAndView("client/checkout");
    }
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public ModelAndView register(){
        return new ModelAndView("client/register");
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ModelAndView login(){
        return new ModelAndView("client/login");
    }

    @RequestMapping(value = "/404",method = RequestMethod.GET)
    public ModelAndView error(){
        return new ModelAndView("client/error");
    }
}