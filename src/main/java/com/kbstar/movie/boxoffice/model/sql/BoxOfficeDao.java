package com.kbstar.movie.boxoffice.model.sql;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kbstar.movie.boxoffice.model.vo.BookingVO;
import com.kbstar.movie.model.vo.BoardVO;
import com.kbstar.movie.user.model.vo.UserVO;

@Repository("daoB")
public class BoxOfficeDao {

	@Autowired
	private SqlSession session;
	
	public List<Object> listBoxoffice(){
		System.out.println(":::: DAO BOXOFFICE:::");
		return session.selectList("movie.boxoffice.movieList");
	}
	
	public List<Object> booking_listRow(String user_id)
	{
		System.out.println(">>>dao myPageRow param "+ user_id);
		return session.selectList("movie.boxoffice.myPageList", user_id);
		
	}
}
