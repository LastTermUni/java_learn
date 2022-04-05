package com.javalearn.camerastore.service;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.request.CategoryRequest;
import com.javalearn.camerastore.request.ProductRequest;

import java.util.List;
import java.util.Map;


public interface CategoryService {
    Map<String, String> findAll();
    List<Category> getCategory();

    Category saveCategory(Category category);

}
