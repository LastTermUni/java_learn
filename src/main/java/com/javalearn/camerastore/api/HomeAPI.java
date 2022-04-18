package com.javalearn.camerastore.api;

import com.javalearn.camerastore.entity.Brand;
import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.entity.Customer;
import com.javalearn.camerastore.repository.BrandRepository;
import com.javalearn.camerastore.repository.CategoryRepository;
import com.javalearn.camerastore.repository.CustomerRepository;
import com.javalearn.camerastore.service.BrandService;
import com.javalearn.camerastore.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
public class HomeAPI {

    @Autowired
    BrandRepository brandRepository;

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    CustomerRepository customerRepository;


    @GetMapping("/cateBrand")
    public Map<String, Object> getCateBrand()
    {
        List<Brand> brands = brandRepository.getAllByStatus();
        List<Category> categories = categoryRepository.getAllByStatus();

        Map<String, Object> list = new HashMap<>();
        list.put("brands", brands);
        list.put("categories", categories);

        return list;
    }



    //check login in client
    @GetMapping("/checkLogin")
    public Customer checkLogin(HttpSession session){
        Customer customer = new Customer();
        String email = (String) session.getAttribute("email");
        if(session.getAttribute("email") == null)
        {
            return customer;
        }
        else
        {
            customer = customerRepository.findCustomerByEmail(email);
            return customer;
        }
    }



}
