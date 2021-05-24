package com.project.NBA.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("players")
public class Player {
	
	@Id
	private long id;
	private String last_name;
	private String name;
	private	int dorsal;
	private String team;
	private int media;

}
