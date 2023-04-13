package net.kaiba.live.model.persistence;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "ciyuan_placementitem")
public class PlacementItem extends Item {
    public float scaleX;
    public float scaleY;
    public float scaleZ;
}
