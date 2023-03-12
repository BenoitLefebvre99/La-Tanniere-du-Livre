package com.example.bookstore.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="BorrowingCard")
public class BorrowingCard {
    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "book_ean_13")
    private Book book;
    private Date loanDate;
    private Date realReturnDate;

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
