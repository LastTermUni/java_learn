package com.javalearn.camerastore.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name ="thuonghieu")
public class Brand {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id")
    private Long id;

    @JsonIgnore
    @OneToMany(mappedBy="brand", fetch = FetchType.LAZY)
    private List<Product> product = new ArrayList<>();

    @Column(name ="tenthuonghieu")
    private String tenthuonghieu;

    @Column(name ="mota")
    private String mota;

    @Column(name ="slug")
    private String slug;

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
