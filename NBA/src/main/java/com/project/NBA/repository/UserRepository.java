package com.project.NBA.repository;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.project.NBA.model.UserData;


public interface UserRepository extends CrudRepository<UserData,String> {
	
	@Query("SELECT * FROM userdatas WHERE userid =:userid")
	UserData findByUserid(@Param("userid") String userid);
	
	@Modifying
	@Transactional
	@Query("UPDATE userdatas SET password =:password WHERE userid =:userid")
	void updateByUserId(@Param("password")String password,@Param("userid") String userid);
}
