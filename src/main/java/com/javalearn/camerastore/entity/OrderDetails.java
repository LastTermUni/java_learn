package com.javalearn.camerastore.entity;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@ToString
@Getter
@Setter
@Table(name ="chitietdonhang")
public class OrderDetails {


    @Id
    @Column(name = "machitiet")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long machitiet;

    @ManyToOne
    @JoinColumn(name = "madh", nullable = false)
    private Order order;

    @ManyToOne
    @JoinColumn(name = "masp", nullable = false)
    private Product product;

    @Column(name = "soluong")
    private Long soluong;

    @Column(name = "tongtien")
    private Long tongtien;

}
