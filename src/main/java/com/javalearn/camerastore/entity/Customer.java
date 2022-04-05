package com.javalearn.camerastore.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Getter
@Setter
@ToString
@Table(name ="khachhang")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaKH")
    private Long MaKH;
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


}
