package com.javalearn.camerastore.api;

import com.javalearn.camerastore.entity.Brand;
import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import static com.javalearn.camerastore.library.ConvertToSlug.toSlug;

@RestController
@RequestMapping("/admin")
public class BrandAPI {

    @Autowired
    BrandService brandService;

    @PostMapping(value = "/brand")
    public ResponseEntity<Brand> addBrand(@RequestBody Brand brand) {
        try {
            brand.setSlug(toSlug(brand.getTenthuonghieu()));
            brand.setStatus(1);
            brandService.saveBrand(brand);
            return new ResponseEntity<>(brand, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PutMapping(value = "/brand")
    public ResponseEntity<Brand> updateCategory(@RequestBody Brand brand) {
        try {
            brand.setSlug(toSlug(brand.getTenthuonghieu()));
            brandService.saveBrand(brand);
            return new ResponseEntity<>(brand, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }
}
