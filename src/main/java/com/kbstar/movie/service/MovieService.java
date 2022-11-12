package com.kbstar.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbstar.movie.model.sql.MovieDao;
import com.kbstar.movie.model.vo.BoardVO;
import com.kbstar.movie.user.model.vo.UserVO;

@Service("serviceM")
public class MovieService {
	@Autowired
	private MovieDao dao;
	
	public List<Object> list(){
		System.out.println(">>> service list");
		return dao.listRow();
	}
	
	public int insert(BoardVO board){
		System.out.println(">>> service insert");
		return dao.insertRow(board);
	}
	

	
}
