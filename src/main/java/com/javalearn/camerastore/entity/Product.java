package com.javalearn.camerastore.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Entity
@Getter
@Setter
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

    @Column(name ="soluong")
    private long soluong;

    @Column(name ="gia")
    private double gia;

    @ManyToOne
    @JoinColumn(name ="loaisp", nullable = false)
    private Category category;

    @ManyToOne
    @JoinColumn(name ="mathuonghieu", nullable = false)
    private Brand brand;

    @JsonIgnore
    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
    private List<OrderDetails> orderDetails = new ArrayList<>();

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
