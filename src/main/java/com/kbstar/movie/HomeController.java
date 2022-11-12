package com.kbstar.movie;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kbstar.movie.boxoffice.service.BoxOfficeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@Autowired
	private BoxOfficeService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "main.jbmovie", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println(">>> home ctrl box_office_list");
		List<Object> result = service.list();
		
		System.out.println("result >>> " + result);
		model.addAttribute("boxofficeModel", result);
		
		return "index";
	}
	
}
