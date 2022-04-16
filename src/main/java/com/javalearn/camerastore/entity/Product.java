package com.javalearn.camerastore.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.util.*;


@Entity
@Getter
@Setter
@ToString
@Table(name ="sanpham")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id")
    private Long id;

    @Column(name ="tensp")
    private String tensp;

    @Column(name ="mota")
    private String mota;

    @Column(name ="hinh")
    private String hinh;

    @Column(name ="gia")
    private double gia;

    @ManyToOne
    @JoinColumn(name ="loaisp", nullable = false)
    private Category category;

    @ManyToOne
    @JoinColumn(name ="mathuonghieu", nullable = false)
    private Brand brand;

    @Column(name ="slug")
    private String slug;

    @Column(name ="status")
    private long status;

    @CreationTimestamp
    @Column(name ="created_at", nullable = false, updatable = false)
    private Date created_at;

    @UpdateTimestamp
    @Column(name ="updated_at")
    private Date updated_at;
}
