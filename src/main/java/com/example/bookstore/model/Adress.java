package com.example.bookstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Adress")
public class Adress {
    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    private String number;
    private String lane;
    private String residence;
    private String building;
    private String apartmentNumber;
    private String postalCode;
    private String town;
    private String country;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


}
