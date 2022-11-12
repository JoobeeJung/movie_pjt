package com.kbstar.movie.boxoffice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbstar.movie.boxoffice.model.sql.BoxOfficeDao;
import com.kbstar.movie.boxoffice.model.vo.BookingVO;
import com.kbstar.movie.model.vo.BoardVO;
import com.kbstar.movie.user.model.vo.UserVO;

@Service("serviceB")
public class BoxOfficeService {
	@Autowired
	private BoxOfficeDao dao;
	
	public List<Object> list(){
		System.out.println(">>> BOXOFFICE >>>> service list");
		return dao.listBoxoffice();
	}

	public List<Object> booking_list(String user_id){
		System.out.println(">>> service booking_list");
		return dao.booking_listRow(user_id);
	}

}
