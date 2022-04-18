package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    @Query("SELECT v FROM Product v where v.status = 1")
    List<Product> getAllByStatus();
    Product findFirstByOrderByIdDesc();
    Product findOneById(Long id);
    Product findOneBySlug(String slug);
    List<Product> findAllByCategory_IdAndBrand_Id(long idCate,long idBrand);
    List<Product> findAllByCategory_Id(long idCate);
    List<Product> findAllByBrandId(long idBrand);
    List<Product> findAllByTenspContains(String searchText);
}
