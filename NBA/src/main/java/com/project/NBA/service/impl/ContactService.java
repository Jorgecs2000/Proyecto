package com.project.NBA.service.impl;

import org.springframework.stereotype.Service;

import com.project.NBA.model.Contact;

import java.util.List;

@Service
public class ContactService {

    public static List<Contact> getContacts() {
        return List.of(
                new Contact("Jaime","jaimesoria@gmail.com","676988971"),
                new Contact("Maria","mariagarcia@gmail.com","689321109"));
    }
}