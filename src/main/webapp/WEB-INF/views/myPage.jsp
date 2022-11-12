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
                <h1 class="title bold">Check Your <span class="color-theme">movie</span> tickets</h1>
                <p>See your booking history and details</p>
            </div>
        </div>
    </section>
    <!-- ==========Banner-Section========== -->

    <!-- ==========Ticket-Search========== -->
   
    <!-- ==========Ticket-Search========== -->

    <!-- ==========Movie-Section========== -->
    <section class="movie-section padding-top padding-bottom">
        <div class="container">
         
                <div class="col-lg-12 mb-50 mb-lg-0">
                    <div class="filter-tab tab">
                        <div class="filter-area">
                            <div class="filter-main">
                                
                                <ul class="grid-button tab-menu">
                                                            
                                    <li class="active">
                                        <i class="fas fa-bars"></i>
                                    </li>                            
                                </ul>
                            </div>
                        </div>
                        <div class="tab-area">
                           
                            <c:if test="${bookingModel == null }">
                           		 No Ticket Here
                            </c:if>
                            <div class="tab-item active">
                                <div class="movie-area mb-10">
		                        <c:if test="${ bookingModel != null }">		                        
									<c:forEach var="booking" items="${bookingModel}">
									<div class="movie-list">
                                        <div class="movie-thumb c-thumb">
                                            <a href="movieDetails.jbmovie?IMDbId=${booking.movie_IMDbId}" class="w-100 bg_img h-100" data-background="${booking.movie_thumbnail }">
                                                <img class="d-sm-none" src="${booking.movie_thumbnail }"alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <h5 class="title">
                                                <a href="movieDetails.jbmovie?IMDbId=${booking.movie_IMDbId}">${booking.movie_name }</a>
                                            </h5>
                                            ${booking.theater_name } | ${booking.booking_date } | ${booking.booking_time }
                                            <ul class="movie-rating-percent">
                                               
                                                    
                                                </ul>
                                            <div class="book-area">
                                                <div class="book-ticket">
                                                    
                                                    <div class="react-item mr-auto">
                                                        <a href="movieTicket.jbmovie?mode=update&booking_idx=${booking.booking_idx }&user_id=${booking.user_id}">
                                                            <div class="thumb">
                                                                <img src="/resources/assets/images/icons/edit_white.png" alt="icons">
                                                            </div>
                                                            <span>update detail</span>
                                                        </a>
                                                    </div>
                                                    <div class="react-item mr-auto">
                                                        <a href="cancelTicket.jbmovie?booking_idx=${booking.booking_idx }&user_id=${booking.user_id}">
                                                            <div class="thumb">
                                                                <img src="/resources/assets/images/icons/delete_white.png" alt="icons">
                                                            </div>
                                                            <span>cancel booking</span>
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
   
</body>

</html>