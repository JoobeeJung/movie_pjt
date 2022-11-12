package com.kbstar.movie.boxoffice.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kbstar.movie.boxoffice.service.BoxOfficeService;
import com.kbstar.movie.boxoffice.service.TheaterService;

@Controller
@RequestMapping(value="app/")
public class AppTheaterCtrl {
	@Autowired
	private TheaterService service;
	
	@RequestMapping(value ="theater.jbmovie")
	@ResponseBody

	public List<Object> theater_list(){
		System.out.println(">>> ANDROID >>>> THEATER ctrl theater_list");
		List<Object> result = service.list();
		
		System.out.println(">>> Result ::::");
		System.out.println(result);
		
		return result;
		
	}

}

