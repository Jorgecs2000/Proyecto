package com.project.NBA.service;

import com.project.NBA.model.User;
import com.project.NBA.model.UserData;

public interface UserService {
	
	public UserData login(User loginreq);
	
	public UserData register(UserData usuario);
	
	public UserData update(UserData user);

}
