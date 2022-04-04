package com.javalearn.camerastore.controller.client;

import com.javalearn.camerastore.convert.ConvertCategory;
import com.javalearn.camerastore.convert.ConvertProduct;
import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.service.CategoryService;
import com.javalearn.camerastore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping(value = "/")
public class HomeController {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    ConvertProduct convertProduct;
    @Autowired
    ConvertCategory convertCategory;



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
    @GetMapping(value = "product-detail/{slug}")
    public ModelAndView productDetail(@PathVariable String slug) {
        Product product = productRepository.findOneBySlug(slug);
        ModelAndView mav = new ModelAndView("client/product-detail");
        mav.addObject("products",product);
        mav.addObject("cates",categoryService.getCategory());
        return mav;
    }

    @GetMapping(value = {"product" })
    public ModelAndView product(@RequestParam(required = false) String id_cate, @RequestParam(required = false) String id_brand,
                                @RequestParam(required = false ) String page,
                                HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("client/product");
        List<Product> product;

        if(!Objects.equals(id_cate, null) &&!Objects.equals(id_brand, null)) {
            product = productRepository.findAllByCategory_IdAndDiscount_Id(Long.parseLong(id_cate), Long.parseLong(id_brand));
        }else if (!Objects.equals(id_cate, null)){
            product = productRepository.findAllByCategory_Id(Long.parseLong(id_cate));
        }else if (!Objects.equals(id_brand, null)){
            product = productRepository.findAllByDiscount_Id(Long.parseLong(id_brand));
        }else {
            product = productService.getProduct();
        }
        PagedListHolder<Product> productList;
        HttpSession session = request.getSession();
        if(page == null|| page.equals("0")) {
            productList = new PagedListHolder<Product>();
            productList.setSource(product);
            productList.setPageSize(1);
            session.setAttribute("productsList", productList);
        }else {
            int pageNum = Integer.parseInt(page);
            productList = (PagedListHolder<Product>) session.getAttribute("productsList");
            productList.setPage(pageNum - 1);
        }
        mav.addObject("products",productList.getPageList());
        mav.addObject("paging",productList);
        mav.addObject("cates",categoryService.getCategory());
        return mav;
    }
    @RequestMapping(value = "search", method=RequestMethod.POST)
    public ModelAndView search( HttpServletRequest request, HttpServletResponse response) {
         String searchText = request.getParameter("searchTextf");

        List<Product> products = productRepository.findAllByTenspContains(searchText);
        ModelAndView mav = new ModelAndView("client/search");
        mav.addObject("searchText",searchText);
        mav.addObject("searchResults",products);
        mav.addObject("cates",categoryService.getCategory());
        return mav ;
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