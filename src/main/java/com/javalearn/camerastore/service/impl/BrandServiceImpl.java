package com.javalearn.camerastore.service.impl;

import com.javalearn.camerastore.repository.BrandRepository;
import com.javalearn.camerastore.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BrandServiceImpl implements BrandService {

    @Autowired
    BrandRepository brandRepository;

}
