package com.javalearn.camerastore.request;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderRequest {
    private Long madh;
    private Long makh;
    private String diachi;
    private double tongtien;
    private Long status;
}
