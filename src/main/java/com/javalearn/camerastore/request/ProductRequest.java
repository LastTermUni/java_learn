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
    private long soluong;
    private long category;
    private long brand;
    private String slug;
    private long status;
}
