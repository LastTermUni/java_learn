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
@Table(name ="khachhang")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaKH")
    private Long MaKH;

    @JsonIgnore
    @OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
    private List<Order> orders = new ArrayList<>();

    @Column(name = "Username")
    private String Username;

    @Column(name = "Password")
    private String Password;

    @Column(name = "TenKH")
    private String TenKH;

    @Column(name = "SDT")
    private String SDT;

    @Column(name = "Email")
    private String Email;

    @CreationTimestamp
    @Column(name ="created_at", nullable = false, updatable = false)
    private Date created_at;

    @UpdateTimestamp
    @Column(name ="updated_at")
    private Date updated_at;

}
