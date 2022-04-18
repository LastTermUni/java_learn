package com.javalearn.camerastore.repository;

import com.javalearn.camerastore.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    @Query("SELECT v FROM Product v where v.status = 1  order by v.id desc")
    List<Product> getAllByStatus();

    @Query("SELECT v FROM Product v where v.status = 1 order by v.id desc")
    List<Product> get9ByStatus();

    Product findFirstByOrderByIdDesc();
    Product findOneById(Long id);
    Product findOneBySlug(String slug);

    List<Product> findAllByCategory_IdAndBrand_IdAndStatusEqualsOrderByIdDesc(long idCate,long idBrand,long status);
    List<Product> findAllByCategory_IdAndStatusEqualsOrderByIdDesc(long idCate,long status);
    List<Product> findAllByBrandIdAndStatusEqualsOrderByIdDesc(Long brand_id, long status);
    List<Product> findAllByTenspContainsAndStatusEqualsOrderByIdDesc(String searchText,long status);

    @Query("SELECT v FROM Product v where v.status = 1 or v.status = 0 order by v.id desc")
    List<Product> getAllByStatuss();
}
