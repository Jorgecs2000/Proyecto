package com.project.NBA.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.NBA.model.User;
import com.project.NBA.model.UserData;
import com.project.NBA.repository.UserRepository;
import com.project.NBA.service.UserService;


@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public UserData login(User user) {
		String userid= user.getUser();
		UserData u= userRepository.findByUserid(userid);
		
		if(user.getPassword().equals((u.getPassword()))){
			return u;
		}
		else
		{
			return null;
		}
	}

	@Override
	public UserData register(UserData usuario) {
		
		userRepository.save(usuario);
		
		return usuario;
		
	}

	@Override
	public UserData update(UserData user) {
		userRepository.updateByUserId(user.getUserid());
		return user;
	}
	
	

}
