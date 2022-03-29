package com.javalearn.camerastore.request;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductRequest {
    private long id;
    private String tensp;
    private String mota;
    private String hinh;
    private double gia;
    private long category;
    private long discount;
    private String slug;
    private long status;
}
