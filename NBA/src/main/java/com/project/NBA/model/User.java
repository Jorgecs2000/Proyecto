package com.project.NBA.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Table("users")
public class User {
		@NotNull 
		@Size(min = 3, max = 12)
		@Id
		private String user;
		@NotBlank
		@Size(min = 2, max = 12)
		private String password;

}
