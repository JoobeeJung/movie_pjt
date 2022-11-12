package com.kbstar.movie.boxoffice.model.vo;

public class BoxOfficeVO {
	private int movie_idx, movie_rank, movie_status;
	private String movie_name, movie_thumbnail, movie_IMDbId;
	
	public BoxOfficeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoxOfficeVO(int movie_idx, int movie_rank, int movie_status, String movie_name, String movie_thumbnail,
			String movie_IMDbId) {
		super();
		this.movie_idx = movie_idx;
		this.movie_rank = movie_rank;
		this.movie_status = movie_status;
		this.movie_name = movie_name;
		this.movie_thumbnail = movie_thumbnail;
		this.movie_IMDbId = movie_IMDbId;
	}

	public int getMovie_idx() {
		return movie_idx;
	}

	public void setMovie_idx(int movie_idx) {
		this.movie_idx = movie_idx;
	}

	public int getMovie_rank() {
		return movie_rank;
	}

	public void setMovie_rank(int movie_rank) {
		this.movie_rank = movie_rank;
	}

	public int getMovie_status() {
		return movie_status;
	}

	public void setMovie_status(int movie_status) {
		this.movie_status = movie_status;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
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
		return "BoxOfficeVO [movie_idx=" + movie_idx + ", movie_rank=" + movie_rank + ", movie_status=" + movie_status
				+ ", movie_name=" + movie_name + ", movie_thumbnail=" + movie_thumbnail + ", movie_IMDbId="
				+ movie_IMDbId + "]";
	}
	
	
}
