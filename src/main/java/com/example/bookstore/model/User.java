package com.example.bookstore.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="User")
public class User {
    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    private String title;
    private String lastname;
    private String firstname;
    private String email;
    @ManyToOne
    @JoinColumn(name = "adress_id")
    private Adress adress;
    private List<BorrowingCard> borrowingCards;

    public Adress getAdress() {
        return adress;
    }

    public void setAdress(Adress adress) {
        this.adress = adress;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
