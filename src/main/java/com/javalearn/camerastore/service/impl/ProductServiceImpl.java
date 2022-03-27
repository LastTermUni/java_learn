package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.entity.Discount;
import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.repository.CategoryRepository;
import com.javalearn.camerastore.repository.DiscountRepository;
import com.javalearn.camerastore.repository.ProductRepository;
import com.javalearn.camerastore.request.ProductRequest;
import com.javalearn.camerastore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private DiscountRepository discountRepository;

    @Override
    public List<Product> getProduct() {
        return productRepository.findAll();
    }

    @Override
    public ProductRequest saveProduct(ProductRequest productRequest) {
        Product product = new Product();
        Category category = categoryRepository.findOneById(productRequest.getCategory());
        Discount discount = discountRepository.findOneById(productRequest.getDiscount());
        product.setTensp(productRequest.getTensp());
        product.setMota(productRequest.getMota());
        product.setGia(productRequest.getGia());
        product.setHinh(productRequest.getHinh());
        product.setSlug(productRequest.getSlug());
        product.setStatus(productRequest.getStatus());
        product.setDiscount(discount);
        product.setCategory(category);
        Product saveProduct = productRepository.save(product);
        return productRequest;
    }

//    @Override
//    public Product saveProduct(Product product) {
//        return productRepository.save(product);
//    }
}
