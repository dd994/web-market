package com.gmail.ddzhunenko.demo.services;

import com.gmail.ddzhunenko.demo.dao.UserDAO;
import com.gmail.ddzhunenko.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Override
    public void registration(User user) {
        userDAO.save(user);
    }

    @Override
    public void login(User user) {

    }

}
