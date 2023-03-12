package com.example.bookstore.resources;

import com.example.bookstore.model.BorrowingCard;
import com.example.bookstore.model.User;

import javax.print.attribute.standard.Media;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/users")
public class UserResource {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<User> getUsers() {
        return null;
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public User getUser(@PathParam("id") long userId) {
        return null;
    }

    @GET
    @Path("/{id}/borrowingcards")
    @Produces(MediaType.APPLICATION_JSON)
    public List<BorrowingCard> getBorrowingCards(@PathParam("id") long userId) {
        return null;
    }

    @GET
    @Path("/search{firstname}{lastname}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<User> searchUsers(@PathParam("firstname") String firstname,
                                  @PathParam("lastname") String lastname) {
        return null;
    }

}
