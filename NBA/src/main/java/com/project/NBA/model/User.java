package com.project.NBA.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
		@NotNull 
		@Size(min = 5, max = 12)
		private String user;
		@NotBlank
		@Size(min = 2, max = 12)
		private String password;

}
