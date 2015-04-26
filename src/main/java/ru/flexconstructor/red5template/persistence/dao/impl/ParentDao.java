package ru.flexconstructor.red5template.persistence.dao.impl;


import org.springframework.stereotype.Repository;
import ru.flexconstructor.red5template.persistence.dao.IParentDao;
import ru.flexconstructor.red5template.persistence.dao.common.AbstractHibernateDao;
import ru.flexconstructor.red5template.persistence.model.Parent;

@Repository
public class ParentDao extends AbstractHibernateDao<Parent> implements IParentDao {

    public ParentDao() {
        super();

        setClazz(Parent.class);
    }

    // API

}
