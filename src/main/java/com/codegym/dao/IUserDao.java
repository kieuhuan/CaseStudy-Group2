package com.codegym.dao;

import com.codegym.model.User;

public interface IUserDao extends IGeneralDao<User>{
    boolean editStatus(int id);
    int countUser();
}
