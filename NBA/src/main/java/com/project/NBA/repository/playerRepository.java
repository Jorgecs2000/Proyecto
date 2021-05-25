package com.project.NBA.repository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.project.NBA.model.Player;

public interface playerRepository extends CrudRepository<Player,String>{
	
	@Query("SELECT * FROM players WHERE last_name =:last_name LIMIT 1")
	Player findByLastName(@Param("last_name") String lastname);
		
}