package com.kbstar.movie.user.model.sql;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kbstar.movie.user.model.vo.UserVO;

@Repository("userD")
public class UserDaoImpl {
	
	@Autowired
	private SqlSession session;
	
	public UserVO loginRow(UserVO user)
	{
		System.out.println(">>> user dao loginRow "+ user);
		return session.selectOne("movie.user.login", user);
		
	}
}
