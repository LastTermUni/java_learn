package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    @Query("SELECT v FROM Product v where v.status = 1")
    List<Product> getAllByStatus();

    Product findOneByOrderByCreated_atDesc();
    Product findOneById(Long id);
    Product findOneBySlug(String slug);
    List<Product> findAllByOrderBy (long idBrand);
    List<Product> findAllByCategory_IdAndBrand_Id(long idCate,long idBrand);
    List<Product> findAllByCategory_Id(long idCate);
    List<Product> findAllByBrand_Id(long idBrand);
    List<Product> findAllByBrandId(long idBrand);
    List<Product> findAllByTenspContains(String searchText);

    @Query("SELECT v FROM Product v where v.status = 1 or v.status = 0 order by v.id desc")
    List<Product> getAllByStatuss();
}
