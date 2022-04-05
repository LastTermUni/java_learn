package com.javalearn.camerastore.convert;

import com.javalearn.camerastore.entity.Product;
import com.javalearn.camerastore.request.ProductRequest;
import org.springframework.stereotype.Component;

@Component
public class ConvertProduct {

    public ProductRequest toRequest(Product product)
    {
        ProductRequest result = new ProductRequest();
        result.setId(product.getId());
        result.setTensp(product.getTensp());
        result.setMota(product.getMota());
        result.setHinh(product.getHinh());
        result.setGia(product.getGia());
        result.setCategory(product.getCategory().getId());
        result.setBrand(product.getBrand().getId());
        result.setSlug(product.getSlug());
        result.setStatus(product.getStatus());

        return result;
    }

}
