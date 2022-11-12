<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="./include/header.jsp"%>

<body>
 
    <!-- ==========Banner-Section========== -->
    <section class="banner-section">
        <div class="banner-bg bg_img bg-fixed" data-background="/resources/assets/images/banner/banner01.jpg"></div>
        <div class="container">
            <div class="banner-content">
                <h1 class="title bold">get <span class="color-theme">movie</span> tickets</h1>
                <p>Buy movie tickets in advance, find movie times watch trailers, read movie reviews and much more</p>
            </div>
        </div>
    </section>
    <!-- ==========Banner-Section========== -->

    <!-- ==========Ticket-Search========== -->
   
    <!-- ==========Ticket-Search========== -->

    <!-- ==========Movie-Section========== -->
    <section class="movie-section padding-top padding-bottom">
        <div class="container">
          <!--   <div class="row flex-wrap-reverse justify-content-center">
                <div class="col-sm-10 col-md-8 col-lg-3">
                    <div class="widget-1 widget-banner">
                        <div class="widget-1-body">
                            <a href="#0">
                                <img src="/resources/assets/images/sidebar/banner/banner01.jpg" alt="banner">
                            </a>
                        </div>
                    </div>
                    <div class="widget-1 widget-check">
                        <div class="widget-header">
                            <h5 class="m-title">Filter By</h5> <a href="#0" class="clear-check">Clear All</a>
                        </div>
                        <div class="widget-1-body">
                            <h6 class="subtitle">Language</h6>
                            <div class="check-area">
                                <div class="form-group">
                                    <input type="checkbox" name="lang" id="lang1"><label for="lang1">Tamil</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="lang" id="lang2"><label for="lang2">Telegu</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="lang" id="lang3"><label for="lang3">Hindi</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="lang" id="lang4"><label for="lang4">English</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="lang" id="lang5"><label for="lang5">Multiple Language</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="lang" id="lang6"><label for="lang6">Gujrati</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="lang" id="lang7"><label for="lang7">Bangla</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="widget-1 widget-check">
                        <div class="widget-1-body">
                            <h6 class="subtitle">experience</h6>
                            <div class="check-area">
                                <div class="form-group">
                                    <input type="checkbox" name="mode" id="mode1"><label for="mode1">2d</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="mode" id="mode2"><label for="mode2">3d</label>
                                </div>
                            </div>
                            <div class="add-check-area">
                                <a href="#0">view more <i class="plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="widget-1 widget-check">
                        <div class="widget-1-body">
                            <h6 class="subtitle">genre</h6>
                            <div class="check-area">
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre1"><label for="genre1">thriller</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre2"><label for="genre2">horror</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre3"><label for="genre3">drama</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre4"><label for="genre4">romance</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre5"><label for="genre5">action</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre6"><label for="genre6">comedy</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre7"><label for="genre7">romantic</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre8"><label for="genre8">animation</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre9"><label for="genre9">sci-fi</label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="genre" id="genre10"><label for="genre10">adventure</label>
                                </div>
                            </div>
                            <div class="add-check-area">
                                <a href="#0">view more <i class="plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="widget-1 widget-banner">
                        <div class="widget-1-body">
                            <a href="#0">
                                <img src="/resources/assets/images/sidebar/banner/banner02.jpg" alt="banner">
                            </a>
                        </div>
                    </div>
                </div> -->
                <div class="col-lg-12 mb-50 mb-lg-0">
                    <div class="filter-tab tab">
                        <div class="filter-area">
                            <div class="filter-main">
                                
                                <ul class="grid-button tab-menu">
                                    <li class="active">
                                        <i class="fas fa-th"></i>
                                    </li>                            
                                    <li>
                                        <i class="fas fa-bars"></i>
                                    </li>                            
                                </ul>
                            </div>
                        </div>
                        <div class="tab-area">
                            <div class="tab-item active">
                                <div class="row mb-10 justify-content-center">
                                
		                        <c:if test="${ boxofficeModel != null }">
									<c:forEach var="boxoffice" items="${boxofficeModel}">
     								
									<div class="col-sm-6 col-lg-4" id="goMovieDetail">
                                        <div class="movie-grid">
                                            <div class="movie-thumb c-thumb">
		                                        <a href="movieDetails.jbmovie?IMDbId=${boxoffice.movie_IMDbId}&boxoffice=true">
                                                    <img src="${boxoffice.movie_thumbnail }" alt="movie" height=500px>
                                                </a>
                                            </div>
                                            <div class="movie-content bg-one">
                                                <h5 class="title m-0">
                        		                  <a href="movieDetails.jbmovie?IMDbId=${boxoffice.movie_IMDbId}&boxoffice=true">${boxoffice.movie_name }</a>
                                                </h5>
                                                <ul class="movie-rating-percent">
                                                    <li>
                                                        <div class="thumb">Rank
                                                        </div>
                                                        <span class="content">${boxoffice.movie_rank }</span>
                                                    </li>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
									</c:forEach>	
								</c:if>
                                </div>
                            </div>
                            <div class="tab-item">
                                <div class="movie-area mb-10">
                                
		                        <c:if test="${ boxofficeModel != null }">
									<c:forEach var="boxoffice" items="${boxofficeModel}">
									<div class="movie-list">
                                        <div class="movie-thumb c-thumb">
                                            <a href="movieDetails.jbmovie?IMDbId=${boxoffice.movie_IMDbId}&boxoffice=true" class="w-100 bg_img h-100" data-background="${boxoffice.movie_thumbnail }">
                                                <img class="d-sm-none" src="${boxoffice.movie_thumbnail }"alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <h5 class="title">
                                                <a href="movieDetails.jbmovie?IMDbId=${boxoffice.movie_IMDbId}&boxoffice=true">${boxoffice.movie_name }</a>
                                            </h5>
                                            <ul class="movie-rating-percent">
                                                    <li>
                                                        <div class="thumb">Rank
                                                        </div>
                                                        <span class="content">${boxoffice.movie_rank }</span>
                                                    </li>
                                                    
                                                </ul>
                                            <div class="book-area">
                                                <div class="book-ticket">
                                                    
                                                    <div class="react-item mr-auto">
                                                        <a href="movieDetails.jbmovie?IMDbId=${boxoffice.movie_IMDbId}&boxoffice=true">
                                                            <div class="thumb">
                                                                <img src="/resources/assets/images/icons/book.png" alt="icons">
                                                            </div>
                                                            <span>book ticket</span>
                                                        </a>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									</c:forEach>	
								</c:if>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Movie-Section========== -->

    <script src="/resources/assets/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/assets/js/modernizr-3.6.0.min.js"></script>
    <script src="/resources/assets/js/plugins.js"></script>
    <script src="/resources/assets/js/bootstrap.min.js"></script>
    <script src="/resources/assets/js/isotope.pkgd.min.js"></script>
    <script src="/resources/assets/js/magnific-popup.min.js"></script>
    <script src="/resources/assets/js/owl.carousel.min.js"></script>
    <script src="/resources/assets/js/wow.min.js"></script>
    <script src="/resources/assets/js/countdown.min.js"></script>
    <script src="/resources/assets/js/odometer.min.js"></script>
    <script src="/resources/assets/js/viewport.jquery.js"></script>
    <script src="/resources/assets/js/nice-select.js"></script>
    <script src="/resources/assets/js/main.js"></script>
      
<script>
	var settings = {
		  "url": "https://imdb-api.com/en/API/Title/k_1234567/",//+id
		  "method": "GET",
		  "timeout": 0,
		};
	 
	$.ajax(settings).done(function (response) {
	  console.log(response);
	});
		
	$(document).ready(function(){
		$("#searchBtn").click(function() {
			$.ajax({
				url  : "https://imdb-api.com/en/API/Title/k_t7zmd184/", 
				type : "post", 
				dataType : "json",
				data : { type : $("#searchType").val() , keyword : $("#searchKeyword").val()},
				success : function(data) {
					$("#tbody").empty()
					var txt = ""
					$.each(data , function(idx , obj) {
						txt += "<tr><td>"+obj.idx+"</td>"
						txt += "<td><a href=''>"+obj.subject+"</a></td>"
						txt += "<td>"+obj.writer+"</td>"
						txt += "<td>"+obj.regdate+"</td>"
						txt += "<td><span class='badge bg-red'>"+obj.cnt+"</span></td></tr>"
					})
					$("#tbody").append(txt) 
				}
			})
		})	
	})


</script>
</body>

</html>