package com.project.NBA.model;


import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("userdatas")
public class UserData {

	@Id
	private long id;
	private String userid;
	private String password;
	private String email;
	private String phone;
	private String favourite_team;
	private String favourite_player;

}