package com.kbstar.movie.model.sql;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kbstar.movie.boxoffice.model.vo.BookingVO;
import com.kbstar.movie.model.vo.BoardVO;
import com.kbstar.movie.user.model.vo.UserVO;

@Repository("daoM")
public class MovieDao {
	
	@Autowired
	private SqlSession session;
	
	public List<Object> listRow(){
		System.out.println(">>> dao listRow");
		return session.selectList("movie.app.list");
	}

	public int insertRow(BoardVO board){
		System.out.println(">>> dao insertRow");
		session.insert("movie.app.insert", board);
		System.out.println("generator key >>> " + board.getIdx());
		return board.getIdx();
	}
	

}
