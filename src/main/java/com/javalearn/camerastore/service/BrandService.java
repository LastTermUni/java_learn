package com.javalearn.camerastore.service;

import com.javalearn.camerastore.entity.Brand;
import com.javalearn.camerastore.entity.Category;

import java.util.List;
import java.util.Map;

public interface BrandService {
    Map<String, String> findAll();
    List<Brand> getBrands();

    Brand saveBrand (Brand brand);
}
