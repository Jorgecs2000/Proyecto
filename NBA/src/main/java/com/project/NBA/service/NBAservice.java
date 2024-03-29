package com.project.NBA.service;

import com.project.NBA.model.Player;
import com.project.NBA.model.PlayerSearch;
import com.project.NBA.model.Quinteto;
import java.util.List;


public interface NBAservice {
	
	public PlayerSearch getPlayers(String player);
	
	public Quinteto getQuinteto(String player1, String player2, String player3, String player4, String player5);

	List<Player> buscarTodosJugadores();

	public Player addNewPlayer(Player player);
	
	public void deleteByLName(String last_name);

}
