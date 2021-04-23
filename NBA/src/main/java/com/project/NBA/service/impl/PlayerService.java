package com.project.NBA.service.impl;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.project.NBA.model.PlayerSearch;
import com.project.NBA.service.NBAservice;


@Service("nba")
public class PlayerService implements NBAservice {
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

}
