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
@Table(name ="loaisanpham")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id")
    private Long id;

    @JsonIgnore
    @OneToMany(mappedBy="category", fetch = FetchType.LAZY)
    private List<Product> product = new ArrayList<>();

    @Column(name ="tenloai")
    private String tenloai;

    @Column(name ="hinh")
    private String hinh;

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
