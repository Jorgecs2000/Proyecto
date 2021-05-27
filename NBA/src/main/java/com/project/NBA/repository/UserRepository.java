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
	
	@Modifying
	@Transactional
	@Query("UPDATE userdatas SET email =:email WHERE userid =:userid")
	void updateEmailByUserId(@Param("email")String emial,@Param("userid") String userid);
	
	@Modifying
	@Transactional
	@Query("UPDATE userdatas SET phone =:phone WHERE userid =:userid")
	void updatePhoneByUserId(@Param("phone")String phone,@Param("userid") String userid);
	
	@Modifying
	@Transactional
	@Query("UPDATE userdatas SET favourite_player =:favourite_player WHERE userid =:userid")
	void updateFPlayerByUserId(@Param("favourite_player")String password,@Param("userid") String userid);
	
	@Modifying
	@Transactional
	@Query("UPDATE userdatas SET favourite_team =:favourite_team WHERE userid =:userid")
	void updateFTeamByUserId(@Param("favourite_team")String password,@Param("userid") String userid);
}
