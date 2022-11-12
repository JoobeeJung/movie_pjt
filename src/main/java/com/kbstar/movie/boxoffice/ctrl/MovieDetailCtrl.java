package com.kbstar.movie.boxoffice.ctrl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.kbstar.movie.model.vo.MovieVO;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

@Controller
public class MovieDetailCtrl {
	
	@RequestMapping(value ="movieDetails.jbmovie")
	public String movie_detail(Model model, String IMDbId, String boxoffice, String movie_idx){
		System.out.println(">>> DETAIL ctrl movie_detail");
		Unirest.setTimeouts(30000, 30000);
		String result = null;
		String apiUri = "https://imdb-api.com/en/API/Title/k_1bwxl3vd/"+IMDbId;
		System.out.println("param >>>> "+IMDbId+ " | " + apiUri);

		try {
			HttpResponse response = Unirest.get(apiUri)
			  .asString();
			Gson gson = new Gson();
			MovieVO vo = gson.fromJson(response.getBody().toString(), MovieVO.class);
			System.out.println(":::::::VO:::::::::"+vo);
			model.addAttribute("movieDetailsModel", vo);
			model.addAttribute("boxoffice", boxoffice);

			result = vo.getTitle();
//			JSONObject jj = new JSONObject(stringResponse);
//			System.out.println(":::::::jj:::::::::"+jj.getString("title"));
			
//			System.out.println(":::::::API:::::::::"+response.getBody());
		} catch (UnirestException e) {
			e.printStackTrace();
		}
		
		if(result != null)
		{
			return "movieDetails";
		}
		else
		{
			return "error";
		}
		
	
	}
}