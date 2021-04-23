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
public class Contact {
		@NotNull 
		@Size(min = 2, max = 20)
		private String name;
		@NotBlank
		@Size(min = 5, max = 12)
		private String email;
		@NotBlank
		@Size(min = 9, max=9)
		private String phone;

}
