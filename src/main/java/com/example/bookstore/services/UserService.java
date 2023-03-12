package com.example.bookstore.services;

import com.example.bookstore.model.User;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@ApplicationScoped
public class UserService {

    @PersistenceContext
    private EntityManager entityManager;

    public List<User> findAll() {
        List<User> l = null;
        l = entityManager.createNativeQuery("SELECT * FROM user", User.class)
                .getResultList();
        return l;
    }

    public User find(long id) {
        return entityManager.find(User.class, id);
    }

    public List<User> findByName(String firstname, String lastname) {
        return entityManager.createNativeQuery("SELECT * FROM user WHERE firstname = :f AND lastname = :l", User.class)
                .setParameter("f", firstname)
                .setParameter("l", lastname)
                .getResultList();

    }
}
