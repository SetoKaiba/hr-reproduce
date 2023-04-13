package net.kaiba.util;

import jakarta.enterprise.inject.spi.CDI;
import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;

import java.io.Serializable;

public class VienceIdGenerator implements IdentifierGenerator {
    @Override
    public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
        return CDI.current().select(KeygenUtil.class).get().next();
    }
}
