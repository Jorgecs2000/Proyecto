package com.project.NBA.service;

import com.project.NBA.model.User;
import com.project.NBA.model.UserData;

public interface UserService {
	
	public UserData login(User loginreq);
	
	public UserData register(UserData usuario);
	
	public boolean update(String userid,String password,String password_repe);

	public UserData getUser(String user);
	
	public boolean updateAll(String userid,String email,String phone,String team,String player);
}
