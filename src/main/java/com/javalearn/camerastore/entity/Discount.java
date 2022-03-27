package com.javalearn.camerastore.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@ToString
@Table(name ="giamgia")
public class Discount {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id")
    private long id;

    @JsonIgnore
    @OneToMany(mappedBy="discount", fetch = FetchType.LAZY)
    private List<Product> product = new ArrayList<>();

    @Column(name ="tengiamgia")
    private String tengiamgia;

    @Column(name ="mota")
    private String mota;

    @Column(name ="soluonggiam")
    private long soluongiam;

    @Column(name ="status")
    private long status;

//    @CreationTimestamp
//    @Column(name ="created_at", nullable = false, updatable = false)
//    private Date created_at;
//
//    @UpdateTimestamp
//    @Column(name ="updated_at")
//    private Date updated_at;
}
