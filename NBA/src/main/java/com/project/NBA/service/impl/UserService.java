package com.project.NBA.service.impl;

import org.springframework.stereotype.Service;

import com.project.NBA.model.User;

import java.util.List;

@Service
public class UserService {

    public static List<User> getUsers() {
        return List.of(
                new User("jorge","123456789"),
                new User("javi","1"));
    }
}