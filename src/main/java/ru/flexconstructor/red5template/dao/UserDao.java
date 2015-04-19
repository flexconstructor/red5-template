package ru.flexconstructor.red5template.dao;


import ru.flexconstructor.red5template.entity.User;

public interface UserDao {

    User findByUserName(String username);

}