package net.kaiba.live.model.persistence;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "ciyuan_clothingitem")
public class ClothingItem extends Item {
    public String part;
}
