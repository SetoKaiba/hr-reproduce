package net.kaiba.live.model.persistence;

import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import jakarta.persistence.*;
import net.kaiba.util.PanacheEntityVience;

import java.util.UUID;

@Entity
@Table(name = "ciyuan_item")
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn(name = "itemType")
@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, property = "$type")
@JsonSubTypes({
        @JsonSubTypes.Type(value = ClothingItem.class, name = "ClothingItem, Assembly-CSharp"),
        @JsonSubTypes.Type(value = PlacementItem.class, name = "PlacementItem, Assembly-CSharp")
})
public abstract class Item extends PanacheEntityVience {
    public UUID guid;
    public String name;
}
