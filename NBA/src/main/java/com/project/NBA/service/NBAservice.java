package com.project.NBA.service;

import com.project.NBA.model.PlayerSearch;
import com.project.NBA.model.Quinteto;

public interface NBAservice {
	
	public PlayerSearch getPlayers(String player);
	
	public Quinteto getQuinteto(String player1, String player2, String player3, String player4, String player5);

}
