package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Product findOneById(long id);
    Product findOneBySlug(String slug);
    List<Product> findAllByCategory_IdAndBrand_Id(long idCate,long idBrand);
    List<Product> findAllByCategory_Id(long idCate);
    List<Product> findAllByBrand_Id(long idBrand);
    List<Product> findAllByTenspContains(String searchText);
}
