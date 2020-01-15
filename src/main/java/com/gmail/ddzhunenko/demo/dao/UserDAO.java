package com.gmail.ddzhunenko.demo.dao;

import com.gmail.ddzhunenko.demo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDAO extends JpaRepository<User,Integer> {


}
