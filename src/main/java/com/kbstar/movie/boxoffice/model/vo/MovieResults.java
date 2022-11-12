package com.kbstar.movie.boxoffice.model.vo;

import java.util.List;

public class MovieResults {
	private List results;

	public MovieResults() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MovieResults(List results) {
		super();
		this.results = results;
	}

	public List getResults() {
		return results;
	}

	public void setResults(List results) {
		this.results = results;
	}

	@Override
	public String toString() {
		return "MovieResults [results=" + results + "]";
	}
	
	
	
}
