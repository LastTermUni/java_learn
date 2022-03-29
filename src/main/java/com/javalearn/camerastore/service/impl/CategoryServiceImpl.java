package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.repository.CategoryRepository;
import com.javalearn.camerastore.service.CategoryService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Category> getCategory() {
        return categoryRepository.findAll();
    }
}
