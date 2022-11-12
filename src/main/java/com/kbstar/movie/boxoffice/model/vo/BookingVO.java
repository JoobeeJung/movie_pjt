package com.kbstar.movie.boxoffice.model.vo;

public class BookingVO {
	private int movie_idx, booking_ticketnum, seat_idx, booking_status;
	private String booking_idx, movie_name, seat_num, theater_name, booking_date, booking_time, booking_regdate, user_id, movie_thumbnail, movie_IMDbId;
	
	public BookingVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookingVO(String booking_idx, int movie_idx, int booking_ticketnum, int seat_idx, int booking_status,
			String movie_name, String seat_num, String theater_name, String booking_date, String booking_time,
			String booking_regdate, String user_id, String movie_thumbnail, String movie_IMDbId) {
		super();
		this.booking_idx = booking_idx;
		this.movie_idx = movie_idx;
		this.booking_ticketnum = booking_ticketnum;
		this.seat_idx = seat_idx;
		this.booking_status = booking_status;
		this.movie_name = movie_name;
		this.seat_num = seat_num;
		this.theater_name = theater_name;
		this.booking_date = booking_date;
		this.booking_time = booking_time;
		this.booking_regdate = booking_regdate;
		this.user_id = user_id;
		this.movie_thumbnail = movie_thumbnail;
		this.movie_IMDbId = movie_IMDbId;
	}

	public String getBooking_idx() {
		return booking_idx;
	}

	public void setBooking_idx(String booking_idx) {
		this.booking_idx = booking_idx;
	}

	public int getMovie_idx() {
		return movie_idx;
	}

	public void setMovie_idx(int movie_idx) {
		this.movie_idx = movie_idx;
	}

	public int getBooking_ticketnum() {
		return booking_ticketnum;
	}

	public void setBooking_ticketnum(int booking_ticketnum) {
		this.booking_ticketnum = booking_ticketnum;
	}

	public int getSeat_idx() {
		return seat_idx;
	}

	public void setSeat_idx(int seat_idx) {
		this.seat_idx = seat_idx;
	}

	public int getBooking_status() {
		return booking_status;
	}

	public void setBooking_status(int booking_status) {
		this.booking_status = booking_status;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getSeat_num() {
		return seat_num;
	}

	public void setSeat_num(String seat_num) {
		this.seat_num = seat_num;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	public String getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(String booking_date) {
		this.booking_date = booking_date;
	}

	public String getBooking_time() {
		return booking_time;
	}

	public void setBooking_time(String booking_time) {
		this.booking_time = booking_time;
	}

	public String getBooking_regdate() {
		return booking_regdate;
	}

	public void setBooking_regdate(String booking_regdate) {
		this.booking_regdate = booking_regdate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getMovie_thumbnail() {
		return movie_thumbnail;
	}

	public void setMovie_thumbnail(String movie_thumbnail) {
		this.movie_thumbnail = movie_thumbnail;
	}

	public String getMovie_IMDbId() {
		return movie_IMDbId;
	}

	public void setMovie_IMDbId(String movie_IMDbId) {
		this.movie_IMDbId = movie_IMDbId;
	}

	@Override
	public String toString() {
		return "BookingVO [booking_idx=" + booking_idx + ", movie_idx=" + movie_idx + ", booking_ticketnum="
				+ booking_ticketnum + ", seat_idx=" + seat_idx + ", booking_status=" + booking_status + ", movie_name="
				+ movie_name + ", seat_num=" + seat_num + ", theater_name=" + theater_name + ", booking_date="
				+ booking_date + ", booking_time=" + booking_time + ", booking_regdate=" + booking_regdate
				+ ", user_id=" + user_id + ", movie_thumbnail=" + movie_thumbnail + ", movie_IMDbId=" + movie_IMDbId
				+ "]";
	}
	
	

	
}
