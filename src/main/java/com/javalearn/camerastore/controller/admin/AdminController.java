package com.javalearn.camerastore.controller.admin;

import com.javalearn.camerastore.convert.ConvertCategory;
import com.javalearn.camerastore.convert.ConvertProduct;
import com.javalearn.camerastore.entity.AdminEntity;
import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.repository.AdminRepository;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.request.ProductRequest;
import com.javalearn.camerastore.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    CategoryService categoryService;

    @Autowired
    ConvertProduct convertProduct;

    @Autowired
    ConvertCategory convertCategory;


    @Autowired
    private AdminRepository adminRepository;

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

    @GetMapping("/product-edit/{id}")
    public String productUpdate(@PathVariable long id, Model model){
        Product product = productRepository.findOneById(id);
        ModelAndView mav = new ModelAndView("admin/product-edit");
        ProductRequest productRequest = convertProduct.toRequest(product);
//        mav.addObject("categories", categories);
//        mav.addObject("product", productRequest);
        String[] flowers = new String[] { "Rose", "Lily", "Tulip", "Carnation", "Hyacinth" };
        model.addAttribute("product",productRequest);
//        model.addAttribute("categories", categoryService.findAll());
        return "admin/product-edit";
    }



//    @RequestMapping(value = "/product-list", method = RequestMethod.GET)
//    public ModelAndView productList() {
//        ModelAndView mav = new ModelAndView("admin/product-list");
//        return mav;
//    }
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

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password) {

        AdminEntity adminEntity = adminRepository.getUserByUsername(username);
            if (adminEntity.getPassword().equals(password)) {
                return "redirect:dashboard";
            } else
                return "redirect:login";
        }

}