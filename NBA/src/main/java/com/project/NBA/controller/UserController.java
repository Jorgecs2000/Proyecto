package com.project.NBA.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.NBA.model.User;
import com.project.NBA.model.UserData;
import com.project.NBA.service.UserService;


@RestController
@RequestMapping("api/users")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@PostMapping("/login")
	public ResponseEntity<UserData>login(@RequestBody User user){
		
		UserData userResponse=userService.login(user);
		
		if(userResponse != null)
		{
			return new ResponseEntity<>(userResponse,HttpStatus.OK);
		}
		else
		{
			return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
		}
		
	}
	@GetMapping("/user")
	public ResponseEntity<UserData>getUser(@RequestParam("userid") String userid){
		
		UserData userResponse=userService.getUser(userid);
		
		if(userResponse != null)
		{
			return new ResponseEntity<>(userResponse,HttpStatus.OK);
		}
		else
		{
			return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
		}
		
	}//
	
		
	@PostMapping("/register")
	public ResponseEntity<UserData>register(@RequestBody UserData user){
		
		UserData new_usuario = userService.register(user);
		
		return new ResponseEntity<>(new_usuario,HttpStatus.OK);
	}
	
	@PutMapping("/update")
	public ResponseEntity<UserData> actualizar(@RequestParam("userid") String userid, @RequestParam("password") String password, @RequestParam("password_repe") String password_repe){
		
		boolean r =userService.update(userid,password,password_repe);
		if(r) {
			return new ResponseEntity<>(HttpStatus.OK);
		}else {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		
	}
		
}