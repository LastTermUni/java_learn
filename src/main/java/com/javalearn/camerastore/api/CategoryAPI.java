package com.javalearn.camerastore.api;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.repository.CategoryRepository;
import com.javalearn.camerastore.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import static com.javalearn.camerastore.library.ConvertToSlug.toSlug;

@RestController
@RequestMapping("/admin")
public class CategoryAPI {

    @Autowired
    CategoryService categoryService;

    @Autowired
    CategoryRepository categoryRepository;

    @PostMapping(value = "/category")
    public ResponseEntity<Category> addCategory(@RequestBody Category category) {
        try {
            category.setSlug(toSlug(category.getTenloai()));
            category.setStatus(1);
            categoryService.saveCategory(category);
            return new ResponseEntity<>(category, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PutMapping(value = "/category")
    public ResponseEntity<Category> updateCategory(@RequestBody Category category) {
        try {
            category.setSlug(toSlug(category.getTenloai()));
            categoryService.saveCategory(category);
            return new ResponseEntity<>(category, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PutMapping(value = "/statuscate")
    public ResponseEntity<Category> changeStatusCategory(@RequestParam (value = "id") Long id) {
        try {
            Category category = categoryRepository.findOneById(id);
            if(category.getStatus() == 1)
                category.setStatus(0);
            else
                category.setStatus(1);
            return new ResponseEntity<>(category, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

}
