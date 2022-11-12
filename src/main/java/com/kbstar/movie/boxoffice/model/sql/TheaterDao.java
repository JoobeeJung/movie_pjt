package com.kbstar.movie.boxoffice.model.sql;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kbstar.movie.model.vo.BoardVO;

@Repository("daoT")
public class TheaterDao {

	@Autowired
	private SqlSession session;
	
	public List<Object> listTheater(){
		System.out.println(":::: DAO THEATER:::");
		return session.selectList("movie.boxoffice.theaterList");
	}
}
