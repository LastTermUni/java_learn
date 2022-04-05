package com.javalearn.camerastore.convert;

import com.javalearn.camerastore.entity.Category;
import com.javalearn.camerastore.request.CategoryRequest;
import org.springframework.stereotype.Component;

@Component
public class ConvertCategory {

    public CategoryRequest toRequest(Category category)
    {
        CategoryRequest result = new CategoryRequest();
        result.setId(category.getId());
        result.setHinh(category.getHinh());
        result.setTenloai(category.getTenloai());
        result.setSlug(category.getSlug());
        return result;
    }

}
