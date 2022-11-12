package com.kbstar.movie.app.ctrl;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kbstar.movie.model.vo.BoardVO;
import com.kbstar.movie.service.MovieService;

@Controller
@RequestMapping(value="app/")
public class AppCtrl {
	@Autowired
	private MovieService service;
	
	@RequestMapping(value="listBoard.jbmovie")
	@ResponseBody
	public List<Object> bbs_list(){
		System.out.println(">>> android list Board. kbstar");
		List<Object> list = service.list();
		System.out.println(">>> Result ::::");
		System.out.println(list);
		return list;
	}

	@RequestMapping(value="addBoard.jbmovie")
	@ResponseBody
	public int bbs_add(@RequestBody BoardVO board){
		System.out.println(">>> android add list Board. kbstar");
		System.out.println(board);
		
		int pk_idx = service.insert(board);
		System.out.println("ctrl pk Result ======> "+ pk_idx);
		return pk_idx;
	}
}