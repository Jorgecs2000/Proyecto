package com.project.NBA.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.NBA.model.Player;
import com.project.NBA.model.PlayerSearch;
import com.project.NBA.model.Quinteto;
import com.project.NBA.service.NBAservice;


@CrossOrigin(origins="null")
@RestController
@RequestMapping("/api")
public class RestControllerNBA {

	@Autowired
	private NBAservice nba;
	
	
	@GetMapping("/home/players")
	public ResponseEntity<PlayerSearch> players(@RequestParam("player") String player) {

		PlayerSearch model = new PlayerSearch();
	
			model = nba.getPlayers(player);
		
		return new ResponseEntity<>(model, HttpStatus.OK);

	}
		
	@GetMapping("/quinteto")
	public ResponseEntity<Quinteto> search(@RequestParam("player1") String player1, @RequestParam("player2") String player2, @RequestParam("player3") String player3, 
														@RequestParam("player4") String player4, @RequestParam("player5") String player5){
		Quinteto quinteto = nba.getQuinteto(player1, player2, player3, player4, player5);
		
		if(quinteto != null) {
			return new ResponseEntity<Quinteto>(quinteto, HttpStatus.OK);
		}else {
			return new ResponseEntity<Quinteto>(HttpStatus.BAD_REQUEST);
		}
		
	}
	
	@GetMapping("/jugadores")
	public ResponseEntity<List<Player>> getAllPlayers(){
		List<Player> players = nba.buscarTodosJugadores();
		return new ResponseEntity<>(players,HttpStatus.OK);
	}
	
	@PostMapping("/add")
	public ResponseEntity<Player> addPlayer(@RequestBody Player player){
		Player p = nba.addNewPlayer(player);
		if(p!= null) {
			return new ResponseEntity<Player>(p,HttpStatus.OK);
		}else {
			return new ResponseEntity<Player>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@DeleteMapping("delete")
	public ResponseEntity<Player> deletePlayer(@RequestParam ("last_name") String lastName){
		nba.deleteByLName(lastName);
		return new ResponseEntity<Player>(HttpStatus.OK);
	}
	
	
}
