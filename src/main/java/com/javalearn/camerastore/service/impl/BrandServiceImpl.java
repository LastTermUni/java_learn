package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Brand;
import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.repository.BrandRepository;
import com.javalearn.camerastore.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BrandServiceImpl implements BrandService {

    @Autowired
    BrandRepository brandRepository;

    @Override
    public Map<String, String> findAll() {
        Map<String, String> result = new HashMap<>();
        List<Brand> entities = brandRepository.findAll();
        for (Brand item: entities) {
            result.put(String.valueOf(item.getId()), item.getTenthuonghieu());
        }
        return result;
    }

    @Override
    public List<Brand> getBrands() {
        return brandRepository.findAll();
    }
}
