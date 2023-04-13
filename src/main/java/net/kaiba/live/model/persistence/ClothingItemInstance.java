package net.kaiba.live.model.persistence;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "ciyuan_clothingiteminstance")
public class ClothingItemInstance extends ItemInstance {
//    @ManyToOne
//    public User equippedUser;
}
