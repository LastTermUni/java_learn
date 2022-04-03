package com.javalearn.camerastore.controller.api;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.request.ProductRequest;
import com.javalearn.camerastore.service.CategoryService;
import com.javalearn.camerastore.service.impl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.Normalizer;
import java.util.Locale;
import java.util.regex.Pattern;

import static com.javalearn.camerastore.library.ConvertToSlug.toSlug;

@RestController
@RequestMapping("/admin")
public class CategoryAPI {

    @Autowired
    CategoryService categoryService;



    @PostMapping(value = "/category")
    public ResponseEntity<Category> addProduct(@RequestBody Category category) {
        try {
            category.setSlug(toSlug(category.getTenloai()));
            categoryService.saveCategory(category);
            return new ResponseEntity<>(category, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

}
