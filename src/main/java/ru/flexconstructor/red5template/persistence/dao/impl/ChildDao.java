package ru.flexconstructor.red5template.persistence.dao.impl;


import org.springframework.stereotype.Repository;
import ru.flexconstructor.red5template.persistence.dao.IChildDao;
import ru.flexconstructor.red5template.persistence.dao.common.AbstractHibernateDao;
import ru.flexconstructor.red5template.persistence.model.Child;

@Repository
public class ChildDao extends AbstractHibernateDao<Child> implements IChildDao {

    public ChildDao() {
        super();

        setClazz(Child.class);
    }

    // API

}
