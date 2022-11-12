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
                <h1 class="title  cd-headline clip"><span class="d-block">book your</span> tickets for 
                    <span class="color-theme cd-words-wrapper p-0 m-0">
                        <b class="is-visible">Movie</b>
                    </span>
                </h1>
                <p>Safe, secure, reliable ticketing. Your ticket to live entertainment!</p>
            </div>
        </div>
    </section>
    <!-- ==========Banner-Section========== -->

    <!-- ==========Ticket-Search========== -->
    <!-- <section class="search-ticket-section padding-top pt-lg-0">
        <div class="container">
            <div class="search-tab bg_img" data-background="/resources/assets/images/ticket/ticket-bg01.jpg">
                <div class="row align-items-center mb--20">
                    <div class="col-lg-6 mb-20">
                        <div class="search-ticket-header">
                            <h6 class="category">welcome to JB Movie </h6>
                            <h3 class="title">what are you looking for</h3>
                        </div>
                    </div>
                </div>
                <div class="tab-area">
                    <div class="tab-item active">
                        <form class="ticket-search-form">
                            <div class="form-group large">
                                <input type="text" placeholder="Search for Movies" name='searchKeyword' id="searchKeyword">
                                <button id="searchBtn" type="submit"><i class="fas fa-search"></i></button>
                            </div>
                           
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>     -->
    <!-- ==========Ticket-Search========== -->

    <!-- ==========Movie-Section========== -->
    <section class="movie-section padding-top padding-bottom">
        <div class="container">
            <div class="tab">
                <div class="section-header-2">
                    <div class="left">
                        <h2 class="title">movies</h2>
                        <p>Be sure not to miss these Movies today.</p>
                    </div>
                    <ul class="tab-menu">
                        <li class="active">
                            now showing 
                        </li>
                        <!-- <li>
                            coming soon
                        </li>
                        <li>
                            exclusive
                        </li> -->
                    </ul>
                </div>
                <div class="tab-area mb-30-none">
                    <div class="tab-item active">
                        <div class="owl-carousel owl-theme tab-slider">
                       
						
	                        <c:if test="${ boxofficeModel != null }">
								<c:forEach var="boxoffice" items="${boxofficeModel}">
		     								
		                            <div class="item">
		                                <div class="movie-grid">
		                                    <div class="movie-thumb c-thumb">
		                                        <a href="movieDetails.jbmovie?IMDbId=${boxoffice.movie_IMDbId}&boxoffice=true">
		                                            <img src="${boxoffice.movie_thumbnail }" height=400px alt="movie">
		                                        </a>
		                                    </div>
		                                    <div class="movie-content bg-one">
		                                        <h5 class="title m-0">
		                                            <a href="movieDetails.jbmovie?IMDbId=${boxoffice.movie_IMDbId}">${boxoffice.movie_name }</a>
		                                        </h5>
		                                        <ul class="movie-rating-percent">
		                                            <li>
		                                                <span class="content">Rank</span>
		                                            </li>
		                                            <li>
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
        </div>
    </section>
    <!-- ==========Movie-Section========== -->

   

    <script src="/resources/assets/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/assets/js/modernizr-3.6.0.min.js"></script>
    <script src="/resources/assets/js/plugins.js"></script>
    <script src="/resources/assets/js/bootstrap.min.js"></script>
    <script src="/resources/assets/js/heandline.js"></script>
    <script src="/resources/assets/js/isotope.pkgd.min.js"></script>
    <script src="/resources/assets/js/magnific-popup.min.js"></script>
    <script src="/resources/assets/js/owl.carousel.min.js"></script>
    <script src="/resources/assets/js/wow.min.js"></script>
    <script src="/resources/assets/js/countdown.min.js"></script>
    <script src="/resources/assets/js/odometer.min.js"></script>
    <script src="/resources/assets/js/viewport.jquery.js"></script>
    <script src="/resources/assets/js/nice-select.js"></script>
    <script src="/resources/assets/js/main.js"></script>
    
    
</body>

</html>
