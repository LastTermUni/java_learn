package com.javalearn.camerastore.service;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.request.CategoryRequest;

import java.util.List;
import java.util.Map;


public interface CategoryService {
    Map<String, String> findAll();
    List<Category> getCategory();
}
