package com.kbstar.movie.boxoffice.ctrl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbstar.movie.boxoffice.service.BoxOfficeService;
import com.kbstar.movie.user.model.vo.UserVO;

@Controller
public class BoxOfficeCtrl {
	@Autowired
	private BoxOfficeService service;
	
	@RequestMapping(value ="boxoffice.jbmovie")
	public String boxoffice_list(Model model){
		System.out.println(">>> BOXOFFICE ctrl box_office_list");
		List<Object> result = service.list();
		
		System.out.println("result >>> " + result);
		model.addAttribute("boxofficeModel", result);

		if(result != null)
		{
			return "boxoffice";
		}
		else
		{
			return "error";
		}
		
	}

	@RequestMapping(value ="myPage.jbmovie")
	public String booking_list(String user_id, Model model){
		System.out.println(">>> BoxOffice ctrl booking_list");
		System.out.println("param >>> " + user_id );

		List<Object> result = service.booking_list(user_id);
		
		System.out.println("result >>> " + result);
		model.addAttribute("bookingModel", result);

		if(result != null)
		{
			return "myPage";
		}
		else
		{
			return "error";
		}
		
		
	}
}