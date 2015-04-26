package ru.flexconstructor.red5template.persistence.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.flexconstructor.red5template.persistence.dao.IChildDao;
import ru.flexconstructor.red5template.persistence.dao.common.IOperations;
import ru.flexconstructor.red5template.persistence.model.Child;
import ru.flexconstructor.red5template.persistence.service.IChildService;
import ru.flexconstructor.red5template.persistence.service.common.AbstractService;

@Service
public class ChildService extends AbstractService<Child> implements IChildService {

    @Autowired
    private IChildDao dao;

    public ChildService() {
        super();
    }

    // API

    @Override
    protected IOperations<Child> getDao() {
        return dao;
    }

}
