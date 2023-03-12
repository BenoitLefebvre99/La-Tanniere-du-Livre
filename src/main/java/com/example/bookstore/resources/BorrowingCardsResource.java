package com.example.bookstore.resources;

import com.example.bookstore.model.BorrowingCard;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/borrowingcards")
public class BorrowingCardsResource {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<BorrowingCard> getBorrowingCards() {
        return null;
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public BorrowingCard getBorrowingCard(Long id) {
        return null;
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public BorrowingCard createBorrowingCard(BorrowingCard datas) {
        return null;
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public BorrowingCard setRealReturnDate(@PathParam("id") Long id, BorrowingCard datas) {
        return null;
    }

    @DELETE
    @Produces(MediaType.TEXT_PLAIN)
    @Path("/{id}")
    public Response deleteBorrowingCard(@PathParam("id") Long id) {
        return null;
    }
}
