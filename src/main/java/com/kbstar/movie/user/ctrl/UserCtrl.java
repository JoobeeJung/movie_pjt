package com.kbstar.movie.user.ctrl;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kbstar.movie.user.model.vo.UserVO;
import com.kbstar.movie.user.service.UserServiceImpl;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

@Controller
public class UserCtrl {
	@Autowired
	private UserServiceImpl service;
	
	@RequestMapping(value ="login.jbmovie")
	public String login(UserVO user, HttpSession session){
		System.out.println(">>> user ctrl login");
		System.out.println("param >>> " + user);
		UserVO result = service.loginService(user);
		
		System.out.println("result >>> " + result);
		session.setAttribute("loginSession", result);
		
		if(result != null)
		{
			return "redirect:/main.jbmovie";
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
	
	@RequestMapping(value ="goLogin.jbmovie")
	public String goLogin(){
		System.out.println(">>> Go LOGIN ctrl ");

		return "sign-in";
		
	}

	@RequestMapping(value ="goSignup.jbmovie")
	public String goSignup(){
		System.out.println(">>> Go Signup ctrl ");

			return "sign-up";
		
	}

	@RequestMapping(value ="goAppDownload.jbmovie")
	public String goAppDownload(){
		System.out.println(">>> Go goAppDownload ctrl ");

			return "appsDownload";
		
	}

	@RequestMapping(value ="goContact.jbmovie")
	public String goContact(){
		System.out.println(">>> Go goContact ctrl ");

			return "contact";
		
	}

	@RequestMapping(value ="goAboutUs.jbmovie")
	public String goAboutUs(){
		System.out.println(">>> goAboutUs ctrl ");

			return "about";
		
	}
//	@RequestMapping(value="api.jbmovie")
//	public String apiTest()
//	{
//		System.out.println("==== MOVIE DETAIL FROM API ===" );
//		
//		Unirest.setTimeouts(0, 0);
//		
//		
//		HttpResponse response;
//		try {
//			response = Unirest.get("https://imdb-api.com/en/API/Title/k_t7zmd184/tt10954984")
//			  .asString();
//			System.out.println("***** API ******** " + response.getBody());
//			ObjectMapper objectMapper = new ObjectMapper();
//			String json;
//			try {
//				json = objectMapper.writeValueAsString(response.getBody());
//				System.out.println("***** CONVERT ******** " + json);
//				
//				Map<String, Object> map = new HashMap<String, Object>();
//				try {
//					map = objectMapper.readValue(json, new TypeReference<Map<String, String>>(){});
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//
//			} catch (JsonProcessingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//		} catch (UnirestException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null;
//	}

	/*
	 * session 말고 request에 심는 방법
	 public String xxx (Model model)
	 {
	 	model.setAttribute(key, value);
	 }
	 */

}
