package com.javalearn.camerastore.controller.client;

import com.javalearn.camerastore.convert.ConvertCategory;
import com.javalearn.camerastore.convert.ConvertProduct;
import com.javalearn.camerastore.entity.Customer;
import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.repository.BrandRepository;
import com.javalearn.camerastore.repository.CustomerRepository;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.request.Cart;
import com.javalearn.camerastore.service.BrandService;
import com.javalearn.camerastore.service.CategoryService;
import com.javalearn.camerastore.service.CustomerService;
import com.javalearn.camerastore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping(value = "/")
public class HomeController {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    ProductService productService;

    @Autowired
    CategoryService categoryService;

    @Autowired
    BrandRepository brandRepository;
    @Autowired
    BrandService brandService;

    @Autowired
    ConvertProduct convertProduct;
    @Autowired
    ConvertCategory convertCategory;

    @Autowired
    CustomerService customerService;
    @Autowired
    CustomerRepository customerRepository;

    @Autowired
    ServletContext context;

    @GetMapping("home")
    public ModelAndView homePage(HttpSession session) {
        ModelAndView mav = new ModelAndView("client/home");
        if (session.getAttribute("customer") != null) {
            Customer customer = customerRepository.findOneByMaKH((Long) session.getAttribute("customer"));
            mav.addObject("nameUser", customer.getTenKH());
        }
//        Product productNewest = productRepository.findOneByOrderByCreated_atDesc();

//        mav.addObject("productNewest", productNewest);
        mav.addObject("products", productService.getProduct());
        mav.addObject("cates", categoryService.getCategory());
        mav.addObject("brands", brandService.getBrands());

        return mav;
    }

    // sản phẩm
    @GetMapping(value = "product-detail/{slug}")
    public ModelAndView productDetail(@PathVariable String slug, HttpSession session) {
        Product product = productRepository.findOneBySlug(slug);
        ModelAndView mav = new ModelAndView("client/product-detail");

        if (session.getAttribute("customer") != null) {
            Customer customer = customerRepository.findOneByMaKH((Long) session.getAttribute("customer"));
            mav.addObject("nameUser", customer.getTenKH());
        }
        mav.addObject("products", product);
        mav.addObject("cates", categoryService.getCategory());
        mav.addObject("brands", brandService.getBrands());
        return mav;
    }

    @GetMapping(value = { "product" })
    public ModelAndView product(@RequestParam(required = false) String id_cate,
            @RequestParam(required = false) String id_brand,
            @RequestParam(required = false) String page,
            HttpServletRequest request, HttpSession session) {

        ModelAndView mav = new ModelAndView("client/product");

        List<Product> product;

        if ( id_cate!=null && id_brand!=null) {
            product = productRepository.findAllByCategory_IdAndBrand_Id(Long.parseLong(id_cate),
                    Long.parseLong(id_brand));
        } else if (id_cate!=null) {
            product = productRepository.findAllByCategory_Id(Long.parseLong(id_cate));
        } else if (id_brand!=null) {
            product = productRepository.findAllByBrandId(Long.parseLong(id_brand));
        } else {
            product = productService.getProduct();
        }

        PagedListHolder<Product> productList;
        // HttpSession session = request.getSession();
            productList = new PagedListHolder<Product>();
            productList.setSource(product);
            productList.setPageSize(6);
            session.setAttribute("productsList", productList);

        if (page == null || page.equals("0")) {
            productList.setPage(0);

        } else {
            int pageNum = Integer.parseInt(page);
            productList.setPage(pageNum - 1);
        }
        if (session.getAttribute("customer") != null) {
            Customer customer = customerRepository.findOneByMaKH((Long) session.getAttribute("customer"));
            mav.addObject("nameUser", customer.getTenKH());
        }
        mav.addObject("products", productList.getPageList());
        mav.addObject("paging", productList);
        mav.addObject("cates", categoryService.getCategory());
        mav.addObject("brands", brandService.getBrands());
        return mav;
    }

    @RequestMapping(value = "search", method = RequestMethod.POST)
    public ModelAndView search(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
        ModelAndView mav = new ModelAndView("client/search");
        if (session.getAttribute("customer") != null) {
            Customer customer = customerRepository.findOneByMaKH((Long) session.getAttribute("customer"));
            mav.addObject("nameUser", customer.getTenKH());
        }

        String searchText = request.getParameter("searchTextf");

        List<Product> products = productRepository.findAllByTenspContains(searchText);

        mav.addObject("searchText", searchText);
        mav.addObject("searchResults", products);
        mav.addObject("cates", categoryService.getCategory());
        mav.addObject("brands", brandService.getBrands());
        return mav;
    }

    // giỏ hàng
    @RequestMapping(value = "cart", method = RequestMethod.GET)
    public ModelAndView cart() {


        return new ModelAndView("client/cart");
    }

    // thanh toán
    @RequestMapping(value = "checkout", method = RequestMethod.GET)
    public String checkout(HttpSession session, Model model) {
        if (session.getAttribute("customer") == null) {
            return "redirect:login";
        }
        if (session.getAttribute("cartList") == null) {
            return "redirect:home";
        }

        String email = (String) session.getAttribute("email");
        Customer customer = customerRepository.findCustomerByEmail(email);
        model.addAttribute("nameUser", customer.getTenKH());
        HashMap<Long, Cart> list = (HashMap<Long, Cart>) session.getAttribute("cartList");
        List<Cart> cartList = new ArrayList<>();
        double totalPrice = 0;
        if (list != null) {
            for (Map.Entry<Long, Cart> cart : list.entrySet()) {
                cartList.add(cart.getValue());
            }
        }
        if (session.getAttribute("totalPrice") != null) {
            totalPrice = (double) session.getAttribute("totalPrice");
        }


        model.addAttribute("tenKH", customer.getTenKH());
        model.addAttribute("SDT", customer.getSDT());
        model.addAttribute("Email", customer.getEmail());
        model.addAttribute("cartList", cartList);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("cates", categoryService.getCategory());
        model.addAttribute("brands", brandService.getBrands());

        return "client/checkout";
    }

    // tạo tài khoản
    @RequestMapping(value = "register", method = RequestMethod.GET)
    public ModelAndView register(Model model) {
        model.addAttribute("cates", categoryService.getCategory());
        model.addAttribute("brands", brandService.getBrands());
        return new ModelAndView("client/register");
    }

    @PostMapping(value = "register")
    public String register(@ModelAttribute("customer") Customer customer) {
        Customer customerByUsername = customerRepository.findCustomerByUsername(customer.getUsername());
        Customer customerByEmail = customerRepository.findCustomerByEmail(customer.getEmail());

        if (customerByEmail != null || customerByUsername != null) {
            return "redirect:register";
        } else {
            customerService.saveCustomer(customer);
            return "redirect:login";
        }
    }

    // đăng nhập
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView login(Model model) {
        model.addAttribute("cates", categoryService.getCategory());
        model.addAttribute("brands", brandService.getBrands());
        return new ModelAndView("client/login");
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password,
            HttpSession session) {
        Customer customer = customerRepository.findCustomerByUsername(username);
        if (customer == null || password == null) {
            return "redirect:login";
        } else {
            if (customer.getPassword().equals(password)) {
                session.setAttribute("customer", customer.getMaKH());
                session.setAttribute("email", customer.getEmail());
                session.setAttribute("nameCustomer", customer.getTenKH());
                System.out.println("Login success!");
                return "redirect:home";
            } else {
                return "redirect:login";
            }
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.setAttribute("customer", null);
        session.setAttribute("email", null);
        session.setAttribute("nameCustomer", null);
//        session.removeAttribute("email");
//        session.removeAttribute("nameCustomer");
        return "redirect:/home";
    }

    @RequestMapping(value = "404", method = RequestMethod.GET)
    public ModelAndView error( Model model) {
           ModelAndView mav = new ModelAndView("client/error");
        mav.addObject("cates", categoryService.getCategory());
        mav.addObject("brands", brandService.getBrands());
        return mav ;
    }
}