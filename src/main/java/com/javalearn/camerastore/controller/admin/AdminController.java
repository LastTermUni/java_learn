package com.javalearn.camerastore.controller.admin;

import com.javalearn.camerastore.convert.ConvertCategory;
import com.javalearn.camerastore.convert.ConvertProduct;
import com.javalearn.camerastore.entity.*;
import com.javalearn.camerastore.repository.*;
import com.javalearn.camerastore.request.ProductRequest;
import com.javalearn.camerastore.service.BrandService;
import com.javalearn.camerastore.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    BrandRepository brandRepository;

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    CategoryService categoryService;

    @Autowired
    BrandService brandService;

    @Autowired
    ConvertProduct convertProduct;

    @Autowired
    ConvertCategory convertCategory;

    @Autowired
    AdminRepository adminRepository;

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    CustomerRepository customerRepository;

    @Autowired
    OrderDetailsRepository orderDetailsRepository;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(HttpSession session) {
        if(session.getAttribute("roleAdmin") == null){
            return "redirect:/loginadmin";
        }else {
            return "admin/dashboard";
        }

    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String homePage(HttpSession session) {
        if(session.getAttribute("roleAdmin") == null){
            return "redirect:/loginadmin";
        }else {
            return "admin/dashboard";
        }

    }

//    @RequestMapping(value = "/login", method = RequestMethod.GET)
//    public ModelAndView login() {
//        ModelAndView mav = new ModelAndView("login/login");
//        return mav;
//    }



    @RequestMapping(value = "/product-detail", method = RequestMethod.GET)
    public String productDetail(HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        return "admin/product-detail";
    }



    //Product edit
    @GetMapping("/product-add")
    public String productUpdate(@RequestParam(value = "id", required = false) Long id, Model model, HttpSession session) {
//        ModelAndView mav = new ModelAndView("admin/product-add");
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        Product product = new Product();
        ProductRequest productRequest = new ProductRequest();
        if(id != null)
        {
            product = productRepository.findOneById(id);
            productRequest = convertProduct.toRequest(product);
        }

//        mav.addObject("categories", categories);
//        mav.addObject("product", productRequest);

        model.addAttribute("product", productRequest);
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        return "admin/product-add";
    }


    //Product List
    @RequestMapping(value = "/product-list", method = RequestMethod.GET)
    public String productList(Model model, HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        List<Product> productList = productRepository.getAllByStatuss();
        model.addAttribute("productList", productList);
        return "admin/product-list";
    }

    @RequestMapping(value = "/order-history", method = RequestMethod.GET)
    public String orderHistory(HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        return "admin/order-history";
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public ModelAndView error404() {
        ModelAndView mav = new ModelAndView("admin/404");
        return mav;
    }

//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
//        AdminEntity adminEntity = adminRepository.getUserByUsername(username);
//        if (adminEntity.getPassword().equals(password)) {
//            session.setAttribute("roleAdmin", adminEntity.getUsername());
//            return "redirect:dashboard";
//        } else
//            return "redirect:/loginadmin";
//    }


    @GetMapping("/categories-list")
    public String categoryList(HttpSession session, Model model) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        List<Category> category = categoryRepository.findAll();
        model.addAttribute("categoryList", category);
        return "admin/category-list";
    }

    @GetMapping("/category-add")
    public String categoryAdd(@RequestParam(value = "id_cate", required = false) Long id_cate, Model model, HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        Category category = new Category();
        if (id_cate != null) {
            category = categoryRepository.findOneById(id_cate);
        }
        model.addAttribute("category", category);
        return "admin/category-add";
    }

    @GetMapping("/brand-list")
    public String brandList(HttpSession session, Model model) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        List<Brand> brands = brandRepository.findAll();
        model.addAttribute("brandList", brands);
        return "admin/brand-list";
    }

    @GetMapping("/brand-add")
    public String brandAdd(@RequestParam(value = "id_brand", required = false) Long id_brand, HttpSession session, Model model) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        Brand brand = new Brand();
        if (id_brand != null) {
            brand = brandRepository.findOneById(id_brand);
        }
        model.addAttribute("brand", brand);
        return "admin/brand-add";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("roleAdmin");
        return "redirect:/loginadmin";
    }

    @GetMapping("/order-list")
    public String orderList(HttpSession session, Model model) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        List<Order> order = orderRepository.findAll();
        List<String> tenKH = new ArrayList<>();

        for (Order ord:order) {
            tenKH.add(customerRepository.findOneByMaKH(ord.getCustomer().getMaKH()).getTenKH());
        }
        model.addAttribute("tenKH", tenKH);
        model.addAttribute("orderList", order);

        return "admin/order-list";
    }

    @GetMapping("/order-detail")
    public String orderDetail(HttpSession session, Model model, @RequestParam(value = "id") Long id) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:/loginadmin";
        if(id!=null){
            List<OrderDetails> orderDetails = orderDetailsRepository.findByMaDH(id);

            System.out.println("Danh sách order detail: \n" +orderDetails);


            Order order = orderRepository.findOneByMadh(id);
            model.addAttribute("orderDetail", orderDetails);
            model.addAttribute("order", order);
        }

        return "admin/order-detail";
    }

}