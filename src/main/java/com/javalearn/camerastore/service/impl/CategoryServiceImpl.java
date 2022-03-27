package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.repository.CategoryRepository;
import com.javalearn.camerastore.service.CategoryService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

}
