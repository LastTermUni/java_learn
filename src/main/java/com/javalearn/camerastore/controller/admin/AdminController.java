package com.javalearn.camerastore.controller.admin;

import com.javalearn.camerastore.convert.ConvertCategory;
import com.javalearn.camerastore.convert.ConvertProduct;
import com.javalearn.camerastore.entity.AdminEntity;
import com.javalearn.camerastore.entity.Brand;
import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.repository.AdminRepository;
import com.javalearn.camerastore.repository.BrandRepository;
import com.javalearn.camerastore.repository.CategoryRepository;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.request.ProductRequest;
import com.javalearn.camerastore.service.BrandService;
import com.javalearn.camerastore.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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

//    @RequestMapping(value = "/product-add", method = RequestMethod.GET)
//    public ModelAndView productAdd(@RequestParam(value = "id", required = false)Long id) {
//        ModelAndView mav = new ModelAndView("admin/product-add");
//        return mav;
//    }

    //Product edit
    @GetMapping("/product-add")
    public String productUpdate(@RequestParam(value = "id", required = false) Long id, Model model) {
//        ModelAndView mav = new ModelAndView("admin/product-add");
        Product product = new Product();
        ProductRequest productRequest = new ProductRequest();
        if(id != null)
        {
            product = productRepository.findOneById(id);
            productRequest = convertProduct.toRequest(product);
        }

//        mav.addObject("categories", categories);
//        mav.addObject("product", productRequest);

        model.addAttribute("product",productRequest);
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        return "admin/product-add";
    }


    //Product List
    @RequestMapping(value = "/product-list", method = RequestMethod.GET)
    public ModelAndView productList() {
        ModelAndView mav = new ModelAndView("admin/product-list");
        List<Product> productList = productRepository.findAll(Sort.by(Sort.Direction.DESC, "id"));
        mav.addObject("productList", productList);
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

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password) {
        AdminEntity adminEntity = adminRepository.getUserByUsername(username);
        if (adminEntity.getPassword().equals(password)) {
            return "redirect:dashboard";
        } else
            return "redirect:login";
    }



    @GetMapping("/categories-list")
    public ModelAndView categoryList(){
        ModelAndView mav = new ModelAndView("admin/category-list");
        List<Category> category = categoryRepository.findAll();
        mav.addObject("categoryList", category);
        return mav;
    }

    @GetMapping("/category-add")
    public ModelAndView categoryAdd(@RequestParam(value = "id_cate",required = false) Long id_cate){
        ModelAndView mav = new ModelAndView("admin/category-add");
        Category category = new Category();
        if(id_cate != null){
            category = categoryRepository.findOneById(id_cate);
        }
        mav.addObject("category", category);
        return mav;
    }

    @GetMapping("/brand-list")
    public ModelAndView brandList(){
        ModelAndView mav = new ModelAndView("admin/brand-list");
        List<Brand> brands = brandRepository.findAll();
        mav.addObject("brandList", brands);
        return mav;
    }

    @GetMapping("/brand-add")
    public ModelAndView brandAdd(@RequestParam(value = "id_brand",required = false) Long id_brand){
        ModelAndView mav = new ModelAndView("admin/brand-add");
        Brand brand = new Brand();
        if(id_brand != null){
            brand = brandRepository.findOneById(id_brand);
        }
        mav.addObject("brand", brand);
        return mav;
    }

}