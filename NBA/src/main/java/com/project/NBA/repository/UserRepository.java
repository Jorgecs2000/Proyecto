package com.project.NBA.repository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.project.NBA.model.UserData;


public interface UserRepository extends CrudRepository<UserData,String> {
	
	@Query("SELECT * FROM userdatas WHERE userid LIKE :userid LIMIT 1")
	UserData findByUserid(@Param("userid") String userid);

}
