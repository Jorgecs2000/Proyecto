package com.project.NBA.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.project.NBA.model.Player;
import com.project.NBA.model.PlayerSearch;
import com.project.NBA.model.Quinteto;
import com.project.NBA.repository.playerRepository;
import com.project.NBA.service.NBAservice;


@Service("nba")
public class PlayerService implements NBAservice {
	
	@Autowired
	private playerRepository pRepository;
	
	@Value("${nba.url}")
	private String url;
	
	@Override
	public PlayerSearch getPlayers(String player) {
		final RestTemplate template = new RestTemplate();
		final String urlFinal = url + player;
		final HttpMethod method = HttpMethod.GET;
		final ResponseEntity<PlayerSearch> response = template.exchange(urlFinal, method, null,PlayerSearch.class);
		return response.getBody();
	}

	@Override
	public Quinteto getQuinteto(String player1, String player2, String player3, String player4, String player5) {
		Player p1 = pRepository.findByLastName(player1);
		Player p2 = pRepository.findByLastName(player2);
		Player p3 = pRepository.findByLastName(player3);
		Player p4 = pRepository.findByLastName(player4);
		Player p5 = pRepository.findByLastName(player5);
		
		Quinteto quinteto = new Quinteto(p1,p2,p3,p4,p5);
		
		return quinteto;
	}
	
	@Override
	public List<Player> buscarTodosJugadores() {		
		Iterable<Player> players = pRepository.findAll();
		ArrayList<Player> pList = new ArrayList<>();
		Iterator<Player> it =players.iterator();
		
		while(it.hasNext()) {
			Player p = it.next();
			pList.add(p);
		}
		return pList;
	}

	@Override
	public Player addNewPlayer(Player player) {
		pRepository.save(player);
		return player;
	}

}
