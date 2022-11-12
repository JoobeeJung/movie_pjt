package com.kbstar.movie.boxoffice.model.vo;

public class TheaterVO {
	private int theater_idx;
	private String theater_name, theater_address, theater_latitude, theater_longtitude, theater_tel;
	
	public TheaterVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TheaterVO(int theater_idx, String theater_name, String theater_address, String theater_latitude,
			String theater_longtitude, String theater_tel) {
		super();
		this.theater_idx = theater_idx;
		this.theater_name = theater_name;
		this.theater_address = theater_address;
		this.theater_latitude = theater_latitude;
		this.theater_longtitude = theater_longtitude;
		this.theater_tel = theater_tel;
	}

	public int getTheater_idx() {
		return theater_idx;
	}

	public void setTheater_idx(int theater_idx) {
		this.theater_idx = theater_idx;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	public String getTheater_address() {
		return theater_address;
	}

	public void setTheater_address(String theater_address) {
		this.theater_address = theater_address;
	}

	public String getTheater_latitude() {
		return theater_latitude;
	}

	public void setTheater_latitude(String theater_latitude) {
		this.theater_latitude = theater_latitude;
	}

	public String getTheater_longtitude() {
		return theater_longtitude;
	}

	public void setTheater_longtitude(String theater_longtitude) {
		this.theater_longtitude = theater_longtitude;
	}

	public String getTheater_tel() {
		return theater_tel;
	}

	public void setTheater_tel(String theater_tel) {
		this.theater_tel = theater_tel;
	}

	@Override
	public String toString() {
		return "TheaterVO [theater_idx=" + theater_idx + ", theater_name=" + theater_name + ", theater_address="
				+ theater_address + ", theater_latitude=" + theater_latitude + ", theater_longtitude="
				+ theater_longtitude + ", theater_tel=" + theater_tel + "]";
	}
	
	
	
}
