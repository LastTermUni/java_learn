package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.entity.Discount;
import com.javalearn.camerastore.repository.DiscountRepository;
import com.javalearn.camerastore.service.DiscountService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DiscountServiceImpl implements DiscountService {

    @Autowired
    DiscountRepository discountRepository;

}
