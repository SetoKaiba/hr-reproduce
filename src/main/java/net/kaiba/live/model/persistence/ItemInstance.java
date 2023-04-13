package net.kaiba.live.model.persistence;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import jakarta.persistence.*;
import net.kaiba.util.PanacheEntityVience;

@Entity
@Table(name = "ciyuan_iteminstance")
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn(name = "itemInstanceType")
@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, property = "$type")
@JsonSubTypes({
        @JsonSubTypes.Type(value = ClothingItemInstance.class, name = "ClothingItemInstance, Assembly-CSharp"),
        @JsonSubTypes.Type(value = PlacementItemInstance.class, name = "PlacementItemInstance, Assembly-CSharp")
})
public abstract class ItemInstance extends PanacheEntityVience {
    @ManyToOne
    public Item item;
    public boolean inUse;
}
