package com.example.bookstore.services;

import com.example.bookstore.model.BorrowingCard;
import com.example.bookstore.model.User;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@ApplicationScoped
public class BorrowingCardService {

    @PersistenceContext
    private EntityManager entityManager;

    public List<BorrowingCard> findAll() {
        List<BorrowingCard> l = null;
        l = entityManager.createNativeQuery("SELECT * FROM borrowingcards", BorrowingCard.class)
                .getResultList();
        return l;
    }

    public BorrowingCard findOne(long id) {
        return entityManager.find(BorrowingCard.class, id);
    }

    public BorrowingCard createBorrowingCard(BorrowingCard bc) {
        String query = "INSERT INTO borrowingcards(user, book, loanDate, realReturnDate) VALUES (:u,:b,:l,:r)";
        long id = entityManager.createNativeQuery(query)
                .setParameter("u", bc.getUser())
                .setParameter("b", bc.getBook())
                .setParameter("l", bc.getLoanDate())
                .setParameter("r", bc.getRealReturnDate())
                .executeUpdate();
        return findOne(id);
    }

    public BorrowingCard updateBorrowingCard(long id, BorrowingCard bc) {
        String query = "UPDATE borrowincards SET (:u,:b,:l,:r) WHERE id = :i";
        entityManager.createNativeQuery(query)
                .setParameter("i", id)
                .setParameter("u", bc.getUser())
                .setParameter("b", bc.getBook())
                .setParameter("l", bc.getLoanDate())
                .setParameter("r", bc.getRealReturnDate())
                .executeUpdate();
        return findOne(id);
    }

    public void deleteBorrowingCard(long id) {
        BorrowingCard bc = findOne(id);
        entityManager.remove(id);
    }
}
