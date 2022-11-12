package com.kbstar.movie.boxoffice.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbstar.movie.boxoffice.service.BoxOfficeService;
import com.kbstar.movie.boxoffice.service.TheaterService;

@Controller
public class TheaterCtrl {
	@Autowired
	private TheaterService service;
	
	@RequestMapping(value ="theater.jbmovie")
	public String theater_list(){
		System.out.println(">>> THEATER ctrl theater_list");
		List<Object> result = service.list();
		
		System.out.println("result >>> " + result);
		
		if(result != null)
		{
			return "movieTicketPlan";
		}
		else
		{
			return "error";
		}
		
		
	}
}