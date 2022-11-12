package com.kbstar.movie.boxoffice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbstar.movie.boxoffice.model.sql.BookingDao;
import com.kbstar.movie.boxoffice.model.vo.BookingVO;

@Service("serviceK")
public class BookingService {
	@Autowired
	private BookingDao dao;
	
	public int insert_booking(BookingVO booking){
		System.out.println("#### BOOOKING ####" + booking);
		System.out.println(">>> service insert_booking");
		return dao.insertRow(booking);
	}

	public int delete_booking(String booking_idx){
		System.out.println("#### CANCEL BOOOKING ####" + booking_idx);
		System.out.println(">>> service insert_booking");
		return dao.deleteRow(booking_idx);
	}
	

	public int update_booking(BookingVO booking){
		System.out.println("#### UPDATE BOOOKING ####" + booking);
		System.out.println(">>> service update_booking");
		return dao.updateRow(booking);
	}
}
