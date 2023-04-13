package net.kaiba.live.rest;

import io.quarkus.hibernate.reactive.panache.common.WithSession;
import io.smallrye.mutiny.Uni;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import net.kaiba.live.model.persistence.ItemInstance;

import java.util.List;

@Path("/live")
public class LiveResource {

    @Path("/test")
    @GET
    @WithSession
    public Uni<List<ItemInstance>> test() {
        return ItemInstance.listAll();
    }
}
