package com.kbstar.movie.model.vo;

public class MovieVO {
	private String title, image, releaseDate, runtimeStr, plot, directors, writers, stars, genres, countries, keywords;

	public MovieVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MovieVO(String title, String image, String releaseDate, String runtimeStr, String plot, String directors,
			String writers, String stars, String genres, String countries, String keywords) {
		super();
		this.title = title;
		this.image = image;
		this.releaseDate = releaseDate;
		this.runtimeStr = runtimeStr;
		this.plot = plot;
		this.directors = directors;
		this.writers = writers;
		this.stars = stars;
		this.genres = genres;
		this.countries = countries;
		this.keywords = keywords;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getRuntimeStr() {
		return runtimeStr;
	}

	public void setRuntimeStr(String runtimeStr) {
		this.runtimeStr = runtimeStr;
	}

	public String getPlot() {
		return plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public String getDirectors() {
		return directors;
	}

	public void setDirectors(String directors) {
		this.directors = directors;
	}

	public String getWriters() {
		return writers;
	}

	public void setWriters(String writers) {
		this.writers = writers;
	}

	public String getStars() {
		return stars;
	}

	public void setStars(String stars) {
		this.stars = stars;
	}

	public String getGenres() {
		return genres;
	}

	public void setGenres(String genres) {
		this.genres = genres;
	}

	public String getCountries() {
		return countries;
	}

	public void setCountries(String countries) {
		this.countries = countries;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	@Override
	public String toString() {
		return "MovieVO [title=" + title + ", image=" + image + ", releaseDate=" + releaseDate + ", runtimeStr="
				+ runtimeStr + ", plot=" + plot + ", directors=" + directors + ", writers=" + writers + ", stars="
				+ stars + ", genres=" + genres + ", countries=" + countries + ", keywords=" + keywords + "]";
	}
	
	
	
}
