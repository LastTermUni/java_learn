package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.repository.CategoryRepository;
import com.javalearn.camerastore.request.CategoryRequest;
import com.javalearn.camerastore.request.ProductRequest;
import com.javalearn.camerastore.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Map<String, String> findAll() {
        Map<String, String> result = new HashMap<>();
        List<Category> entities = categoryRepository.findAll();
        for (Category item: entities) {
            result.put(String.valueOf(item.getId()), item.getTenloai());
        }
        return result;
    }

    @Override
    public List<Category> getCategory() {
        return categoryRepository.findAll();
    }

    @Override
    public Category saveCategory(Category category) {
        return categoryRepository.save(category);
    }


}
