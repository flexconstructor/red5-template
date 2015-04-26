package ru.flexconstructor.red5template.persistence.dao.impl;


import org.springframework.stereotype.Repository;
import ru.flexconstructor.red5template.persistence.dao.IFooDao;
import ru.flexconstructor.red5template.persistence.dao.common.AbstractHibernateDao;
import ru.flexconstructor.red5template.persistence.model.Foo;

@Repository
public class FooDao extends AbstractHibernateDao<Foo> implements IFooDao {

    public FooDao() {
        super();

        setClazz(Foo.class);
    }

    // API

}
