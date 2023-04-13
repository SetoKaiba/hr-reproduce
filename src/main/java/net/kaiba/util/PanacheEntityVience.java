package net.kaiba.util;

import io.quarkus.hibernate.reactive.panache.PanacheEntityBase;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import org.hibernate.annotations.GenericGenerator;

@MappedSuperclass
public abstract class PanacheEntityVience extends PanacheEntityBase {

    @Id
    @GenericGenerator(name = "vience", strategy = "net.kaiba.util.VienceIdGenerator")
    @GeneratedValue(generator = "vience")
    public Long id;

    public void setIdString(String idString) {
        id = idString == null ? null : KeygenUtil.decode(idString);
    }

    public String getIdString() {
        return id == null ? null : KeygenUtil.encode(id);
    }

    @Override
    public String toString() {
        return this.getClass().getSimpleName() + "<" + id + ">";
    }
}
