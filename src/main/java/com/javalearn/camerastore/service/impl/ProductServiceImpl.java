package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Brand;
import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.entity.Brand;
import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.repository.BrandRepository;
import com.javalearn.camerastore.repository.CategoryRepository;
import com.javalearn.camerastore.repository.BrandRepository;
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
    private BrandRepository brandRepository;

    @Override
    public List<Product> getProduct() {
        return productRepository.findAll();
    }
    @Override
    public ProductRequest saveProduct(ProductRequest productRequest) {
        Product product = new Product();
        Category category = categoryRepository.findOneById(productRequest.getCategory());
        Brand brand = brandRepository.findOneById(productRequest.getBrand());
        if(productRequest.getId() != 0)
        {
            product.setId(productRequest.getId());
        }
        product.setTensp(productRequest.getTensp());
        product.setMota(productRequest.getMota());
        product.setGia(productRequest.getGia());
        product.setSoluong(productRequest.getSoluong());
        product.setHinh(productRequest.getHinh());
        product.setSlug(productRequest.getSlug());
        product.setStatus(productRequest.getStatus());
        product.setBrand(brand);
        product.setCategory(category);
        Product saveProduct = productRepository.save(product);
        return productRequest;
    }

    @Override
    public ProductRequest updateProduct(ProductRequest productRequest) {
        Product products = new Product();
        products = productRepository.findOneById(productRequest.getId());
        Category category = categoryRepository.findOneById(productRequest.getCategory());
        Brand brand = brandRepository.findOneById(productRequest.getBrand());
        products.setTensp(productRequest.getTensp());
        products.setMota(productRequest.getMota());
        products.setGia(productRequest.getGia());
        products.setSoluong(productRequest.getSoluong());
        products.setHinh(productRequest.getHinh());
        products.setSlug(productRequest.getSlug());
        products.setStatus(productRequest.getStatus());
        products.setBrand(brand);
        products.setCategory(category);
        productRepository.save(products);
        return productRequest;
    }

//    @Override
//    public Product saveProduct(Product product) {
//        return productRepository.save(product);
//    }
}
