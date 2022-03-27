package com.javalearn.camerastore.controller.admin;

import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.request.ProductRequest;
import com.javalearn.camerastore.service.CategoryService;
import com.javalearn.camerastore.service.DiscountService;
import com.javalearn.camerastore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.swing.text.View;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Base64;
import java.util.List;
import java.util.Locale;

@RestController
@RequestMapping("/admin")
public class ProductController {
    @Autowired
    private ProductService productService;

    @Autowired
    ServletContext context;

    public static String UploadDirectory = System.getProperty("user.dir") + "/uploads/";

//    @PostMapping("/product")
//    public Product addProduct(@RequestBody Product product)
//    {
//        return productService.saveProduct(product);
//    }

    @PostMapping(value = "/product")
    public ResponseEntity<ProductRequest> addProduct(@RequestBody ProductRequest productRequest)
    {
        try{
            productRequest.setStatus(1);
            productService.saveProduct(productRequest);
            return new ResponseEntity<>(productRequest, HttpStatus.OK);
        }catch (Exception e){
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file) {
        //chưa tìm được cách lấy path
        String url = "C:\\Users\\VIET TIEN\\Desktop\\Java Project\\java_learn\\uploads";

        Path path = Paths.get(url, file.getOriginalFilename());
        try {
            Files.copy(file.getInputStream(),path, StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/product-list";
    }

    @GetMapping("/product")
    public List<Product> getProduct(){
        return productService.getProduct();
    }


    @GetMapping("/product-list")
    public ModelAndView productList() {
        ModelAndView mav = new ModelAndView("admin/product-list");
        return mav;
    }


}
