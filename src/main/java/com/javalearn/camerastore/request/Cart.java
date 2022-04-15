package com.javalearn.camerastore.request;

import com.javalearn.camerastore.entity.Product;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class Cart {
    private ProductRequest productRequest;
    private int quantity;
}
