package com.kbstar.movie.user.ctrl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kbstar.movie.user.model.vo.UserVO;
import com.kbstar.movie.user.service.UserServiceImpl;

@Controller
@RequestMapping(value="app/")

public class AppUserCtrl {
	@Autowired
	private UserServiceImpl service;
	
	@RequestMapping(value ="login.jbmovie")
	@ResponseBody
	public String login(@RequestBody UserVO user){
		System.out.println(">>> App user ctrl login");
		System.out.println("param >>> " + user);
		UserVO result = service.loginService(user);
		
		System.out.println("result >>> " + result);
		
		if(result != null)
		{
			return "1";
		}
		else
		{
			return "error";
		}
		
		
	}

	@RequestMapping(value="logout.jbmovie")
	public String logout(HttpSession session)
	{
		System.out.println(" >>> user ctrl logout");
		session.invalidate();
		return "redirect:/main.jbmovie";
	}
	/*
	 * session 말고 request에 심는 방법
	 public String xxx (Model model)
	 {
	 	model.setAttribute(key, value);
	 }
	 */

}
