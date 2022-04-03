package com.javalearn.camerastore.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoryRequest {
    private long id;
    private String tenloai;
    private String hinh;
    private String slug;
}
