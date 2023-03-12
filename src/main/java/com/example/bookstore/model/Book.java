package com.example.bookstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Book")
public class Book {
    @Id
    @Column(name = "ean13", nullable = false)
    private String ean13;

    private int nbCopies;
    private String serie;
    private String tome;
    private String title;
    private String format;
    private String language;
    private String legalDepositDate;
    private String genre;
    private String description;
    private int nbPages;
    private String author;
    private String illustrator;
    private int loadPeriod;
}
