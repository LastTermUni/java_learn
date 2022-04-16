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

import javax.servlet.http.HttpSession;
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
    public String homePage(HttpSession session) {
        if(session.getAttribute("roleAdmin") == null){
            return "redirect:login";
        }else {
            return "admin/dashboard";
        }

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
    public String productDetail(HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:login";
        return "admin/product-detail";
    }

    @RequestMapping(value = "/product-add", method = RequestMethod.GET)
    public String productAdd(HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:login";
        return "admin/product-add";
    }

    //Product edit
    @GetMapping("/product-edit/{id}")
    public String productUpdate(@PathVariable long id, Model model, HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:login";
        Product product = productRepository.findOneById(id);
        ModelAndView mav = new ModelAndView("admin/product-edit");
        ProductRequest productRequest = convertProduct.toRequest(product);
//        mav.addObject("categories", categories);
//        mav.addObject("product", productRequest);

        model.addAttribute("product", productRequest);
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        return "admin/product-edit";
    }


    //Product List
    @RequestMapping(value = "/product-list", method = RequestMethod.GET)
    public String productList(Model model, HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:login";
        List<Product> productList = productRepository.findAll(Sort.by(Sort.Direction.DESC, "id"));
        model.addAttribute("productList", productList);
        return "admin/product-list";
    }

    @RequestMapping(value = "/order-history", method = RequestMethod.GET)
    public String orderHistory(HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:login";
        return "admin/order-history";
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public ModelAndView error404() {
        ModelAndView mav = new ModelAndView("admin/404");
        return mav;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
        AdminEntity adminEntity = adminRepository.getUserByUsername(username);
        if (adminEntity.getPassword().equals(password)) {
            session.setAttribute("roleAdmin", adminEntity.getUsername());
            return "redirect:dashboard";
        } else
            return "redirect:login";
    }


    @GetMapping("/categories-list")
    public String categoryList(HttpSession session, Model model) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:login";
        List<Category> category = categoryRepository.findAll();
        model.addAttribute("categoryList", category);
        return "admin/category-list";
    }

    @GetMapping("/category-add")
    public String categoryAdd(@RequestParam(value = "id_cate", required = false) Long id_cate, Model model, HttpSession session) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:login";
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
            return "redirect:login";
        List<Brand> brands = brandRepository.findAll();
        model.addAttribute("brandList", brands);
        return "admin/brand-list";
    }

    @GetMapping("/brand-add")
    public String brandAdd(@RequestParam(value = "id_brand", required = false) Long id_brand, HttpSession session, Model model) {
        if(session.getAttribute("roleAdmin") == null)
            return "redirect:login";
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
        return "redirect:login";
    }

}