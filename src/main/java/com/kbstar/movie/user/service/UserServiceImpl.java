package com.kbstar.movie.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbstar.movie.user.model.sql.UserDaoImpl;
import com.kbstar.movie.user.model.vo.UserVO;

@Service("userS")
public class UserServiceImpl {
	
	@Autowired
	private UserDaoImpl dao;
	
	public UserVO loginService(UserVO user)
	{
		System.out.println(" >>> user service login");
		return dao.loginRow(user);
	}

}
