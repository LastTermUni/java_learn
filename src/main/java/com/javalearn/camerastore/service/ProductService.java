package com.javalearn.camerastore.service;

import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.request.ProductRequest;

import java.util.List;

public interface ProductService {
    List<Product> getProduct();
    ProductRequest saveProduct(ProductRequest productRequest);

}
