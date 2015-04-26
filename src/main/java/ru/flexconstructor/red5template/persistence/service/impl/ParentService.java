package ru.flexconstructor.red5template.persistence.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.flexconstructor.red5template.persistence.dao.IParentDao;
import ru.flexconstructor.red5template.persistence.dao.common.IOperations;
import ru.flexconstructor.red5template.persistence.model.Parent;
import ru.flexconstructor.red5template.persistence.service.IParentService;
import ru.flexconstructor.red5template.persistence.service.common.AbstractService;

@Service
public class ParentService extends AbstractService<Parent> implements IParentService {

    @Autowired
    private IParentDao dao;

    public ParentService() {
        super();
    }

    // API

    @Override
    protected IOperations<Parent> getDao() {
        return dao;
    }

}
