package com.example.bookstore.resources;

import com.example.bookstore.model.Book;
import com.example.bookstore.model.BorrowingCard;
import com.example.bookstore.services.BookService;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/books")
public class BookResource {

    @Inject BookService bookService;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Book> getAll() {
        return bookService.findAll();
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Book getBook(@PathParam("id") String bookEan) {
        return bookService.findOne(bookEan);
    }

    @GET
    @Path("/{id}/borrowincards")
    @Produces(MediaType.APPLICATION_JSON)
    public List<BorrowingCard> getBorrowingCards(@PathParam("id") String bookEan) {
        return null;
    }

    @GET
    @Path("/search{title}{author}{illustrator}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Book> searchBooks(@PathParam("title") String title,
                                  @PathParam("author") String author,
                                  @PathParam("illustrator") String illustrator) {
        return null;
    }
}
