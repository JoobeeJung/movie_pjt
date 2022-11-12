package com.kbstar.movie.boxoffice.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.kbstar.movie.boxoffice.model.vo.MovieResults;
import com.kbstar.movie.boxoffice.service.BoxOfficeService;
import com.kbstar.movie.model.vo.MovieVO;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

@Controller
public class SearchMovieCtrl {

	@RequestMapping(value="goSearch.jbmovie")
	public String goSearch() {
		System.out.println(">>> Search ctrl main");
		return "searchMovie";
	}
						
	@RequestMapping(value ="searchMovie.jbmovie")
	public String searchMovie_list(MovieResults ms, Model model, String keyword){
		System.out.println(">>> BOXOFFICE ctrl searchMovie_list");
		Unirest.setTimeouts(5000, 5000);
//		String result = null;
		String apiUri = "https://imdb-api.com/en/API/Search/k_1bwxl3vd/"+keyword;
		System.out.println("param >>>> "+keyword+ " | " + apiUri);

		try {
			HttpResponse response = Unirest.get(apiUri)
			  .asString();
			Gson gson = new Gson();
			System.out.println(":::BODY:::"+response.getBody().toString());
			MovieResults vo = gson.fromJson(response.getBody().toString(), MovieResults.class);
			
			System.out.println(":::::::VO:::::::::"+vo);
//			model.addAttribute("movieDetailsModel", vo);
			model.addAttribute("boxofficeModel", vo.getResults());

//			result = vo.getTitle();
		} catch (UnirestException e) {
			e.printStackTrace();
		}
		
		if(keyword != null)
		{
			return "searchMovie";
		}
		else
		{
			return "error";
		}		
	}
}
