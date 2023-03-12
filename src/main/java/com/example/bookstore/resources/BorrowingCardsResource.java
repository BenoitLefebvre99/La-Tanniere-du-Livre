package com.example.bookstore.resources;

import com.example.bookstore.model.BorrowingCard;
import com.example.bookstore.services.BorrowingCardService;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/borrowingcards")
public class BorrowingCardsResource {

    @Inject
    BorrowingCardService borrowingCardService;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<BorrowingCard> getBorrowingCards() {
        return borrowingCardService.findAll();
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public BorrowingCard getBorrowingCard(Long id) {
        return borrowingCardService.findOne(id);
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public BorrowingCard createBorrowingCard(BorrowingCard datas) {
        BorrowingCard result = borrowingCardService.createBorrowingCard(datas);
        return result;
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public BorrowingCard setRealReturnDate(@PathParam("id") Long id, BorrowingCard datas) {
        BorrowingCard result = borrowingCardService.updateBorrowingCard(id, datas);
        return result;
    }

    @DELETE
    @Produces(MediaType.TEXT_PLAIN)
    @Path("/{id}")
    public Response deleteBorrowingCard(@PathParam("id") Long id) {
        borrowingCardService.deleteBorrowingCard(id);
        return Response.ok("L'utilisateur a été supprimé.")
                .build();
    }
}
