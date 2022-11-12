package com.kbstar.movie.boxoffice.model.sql;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kbstar.movie.boxoffice.model.vo.BookingVO;

@Repository("daoK")
public class BookingDao {
	@Autowired
	private SqlSession session;
	
	public int insertRow(BookingVO booking){
		System.out.println(">>> BookingDao insertRow");
		System.out.println(":::: BOOOKING VO :::: " + booking);
		session.insert("movie.boxoffice.bookingTicket", booking);
		System.out.println("generator key >>> " + booking.getBooking_idx());
		return 1;
	}	
	
	public int deleteRow(String booking_idx){
		System.out.println(">>> BookingDao deleteRow");
		session.delete("movie.boxoffice.cancelTicket", booking_idx);

		return 1;
	}	
	

	public int updateRow(BookingVO booking){
		System.out.println(">>> BookingDao updateRow");
		session.update("movie.boxoffice.updateTicket", booking);

		return 1;
	}	
}
