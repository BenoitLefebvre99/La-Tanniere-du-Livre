package com.example.bookstore.services;

import com.example.bookstore.model.Book;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@ApplicationScoped
public class BookService {

    @PersistenceContext
    private EntityManager entityManager;

    public List<Book> findAll() {
        List<Book> result = entityManager.createNativeQuery("SELECT * FROM book", Book.class)
                .getResultList();
        return result;
    }

    public Book findOne(String ean) {
        return entityManager.find(Book.class, ean);
    }

}
