package com.kbstar.movie.boxoffice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbstar.movie.boxoffice.model.sql.BoxOfficeDao;
import com.kbstar.movie.boxoffice.model.sql.TheaterDao;

@Service("serviceT")
public class TheaterService {
	@Autowired
	private TheaterDao dao;
	
	public List<Object> list(){
		System.out.println(">>> Theater >>>> service list");
		return dao.listTheater();
	}
	
}
