package com.javalearn.camerastore.controller.client;

import com.javalearn.camerastore.service.CategoryService;
import com.javalearn.camerastore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;

@RestController
@RequestMapping(value = "/")
public class HomeController {
    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    ServletContext context;

    @GetMapping("home")
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("client/home");
        mav.addObject("products", productService.getProduct());
        mav.addObject("cates",categoryService.getCategory());
        return mav;
    }
//san pham
    @GetMapping(value = "product-detail")
    public ModelAndView productDetail() {
        ModelAndView mav = new ModelAndView("client/product-detail");
        mav.addObject("cates",categoryService.getCategory());
        return mav;
    }

    @RequestMapping(value = "product", method = RequestMethod.GET)
    public ModelAndView product() {
        ModelAndView mav = new ModelAndView("client/product");
        mav.addObject("products",productService.getProduct());
        mav.addObject("cates",categoryService.getCategory());
        return mav;
    }

    // giỏ hàng
    @RequestMapping(value = "cart", method = RequestMethod.GET)
    public ModelAndView cart() {
        return new ModelAndView("client/cart");
    }

    @RequestMapping(value = "checkout", method = RequestMethod.GET)
    public ModelAndView checkout() {
        return new ModelAndView("client/checkout");
    }

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public ModelAndView register() {
        return new ModelAndView("client/register");
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView login() {
        return new ModelAndView("client/login");
    }

    @RequestMapping(value = "404", method = RequestMethod.GET)
    public ModelAndView error() {
        return new ModelAndView("client/error");
    }
}