package com.project.NBA.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.NBA.model.Contact;
import com.project.NBA.model.PlayerSearch;

import com.project.NBA.model.User;
import com.project.NBA.service.NBAservice;
import com.project.NBA.service.impl.ContactService;


@CrossOrigin(origins="null")
@RestController
@RequestMapping("/api")
public class RestControllerNBA {

	@Autowired
	private NBAservice nba;
	
	
	@GetMapping("/helloworld")
	public String helloworld() {
		return"{\"message\":\"Hola mundo\"}";
	}
	
	@GetMapping("/home/players")
	public ResponseEntity<PlayerSearch> players(@RequestParam("player") String player) {

		PlayerSearch model = new PlayerSearch();
	
			model = nba.getPlayers(player);
		
		return new ResponseEntity<>(model, HttpStatus.OK);

	}

	

	
	@PostMapping(path = "/contact")
    public ResponseEntity<String> contact(
            @Valid @RequestBody Contact contacto,
            BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return new ResponseEntity<>("{\"result\" : \"KO\"}", HttpStatus.BAD_REQUEST);
        }

        for(Contact c: ContactService.getContacts())
        {
            if((c.getEmail().equals(contacto.getEmail())))
            {
                return new ResponseEntity<>("{\"result\" : \"OK\"}", HttpStatus.OK);
            }
        }
        return new ResponseEntity<>("{\"result\" : \"KO\"}", HttpStatus.UNAUTHORIZED);
    }
	
	
	
	
	
	
	
}
