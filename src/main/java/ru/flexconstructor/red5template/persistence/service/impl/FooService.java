package ru.flexconstructor.red5template.persistence.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.flexconstructor.red5template.persistence.dao.IFooDao;
import ru.flexconstructor.red5template.persistence.dao.common.IOperations;
import ru.flexconstructor.red5template.persistence.model.Foo;
import ru.flexconstructor.red5template.persistence.service.IFooService;
import ru.flexconstructor.red5template.persistence.service.common.AbstractService;

@Service
public class FooService extends AbstractService<Foo> implements IFooService {

    @Autowired
    private IFooDao dao;

    public FooService() {
        super();
    }

    // API

    @Override
    protected IOperations<Foo> getDao() {
        return dao;
    }

}
