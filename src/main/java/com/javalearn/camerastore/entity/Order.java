package com.javalearn.camerastore.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Entity
@Getter
@Setter
@Table(name ="dondathang")
public class Order {
    @Id
    @Column(name ="madh")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long madh;

    @ManyToOne
    @JoinColumn(name ="makh", nullable = false)
    private Customer customer;

    @JsonIgnore
    @OneToMany(mappedBy = "order", fetch = FetchType.LAZY)
    private List<OrderDetails> orderDetails = new ArrayList<>();

//    @ManyToMany(cascade = CascadeType.ALL)
//    @JoinTable(name ="chitietdathang",
//                    joinColumns = @JoinColumn(name = "madh"),
//                    inverseJoinColumns = @JoinColumn(name = "masp"))
//    @JsonIgnore
//    @JsonManagedReference
//    private List<Product> likedProducts = new ArrayList<>();

    @CreationTimestamp
    @Column(name ="ngaydathang", nullable = false, updatable = false)
    private Date ngaydathang;

    @CreationTimestamp
    @Column(name ="ngaynhanhang", nullable = false, updatable = false)
    private Date ngaynhanhang;

    @Column(name ="diachi")
    private String diachi;

    @Column(name ="tongtien")
    private double tongtien;

    @Column(name ="status")
    private Long status;


}
