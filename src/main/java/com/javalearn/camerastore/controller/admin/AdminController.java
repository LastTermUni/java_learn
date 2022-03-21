package com.javalearn.camerastore.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("admin/dashboard");
        return mav;
    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("admin/login");
        return mav;
    }
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register() {
        ModelAndView mav = new ModelAndView("admin/register");
        return mav;
    }
    @RequestMapping(value = "/product-detail", method = RequestMethod.GET)
    public ModelAndView productDetail() {
        ModelAndView mav = new ModelAndView("admin/product-detail");
        return mav;
    }
    @RequestMapping(value = "/product-add", method = RequestMethod.GET)
    public ModelAndView productAdd() {
        ModelAndView mav = new ModelAndView("admin/product-add");
        return mav;
    }
    @RequestMapping(value = "/product-list", method = RequestMethod.GET)
    public ModelAndView productList() {
        ModelAndView mav = new ModelAndView("admin/product-list");
        return mav;
    }
    @RequestMapping(value = "/order-history", method = RequestMethod.GET)
    public ModelAndView orderHistory() {
        ModelAndView mav = new ModelAndView("admin/order-history");
        return mav;
    }
    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public ModelAndView error404() {
        ModelAndView mav = new ModelAndView("admin/404");
        return mav;
    }





}