<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">

<%-- <%@include file="./include/header.jsp"%>
 --%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/all.min.css">
    <link rel="stylesheet" href="/resources/assets/css/animate.css">
    <link rel="stylesheet" href="/resources/assets/css/flaticon.css">
    <link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="/resources/assets/css/odometer.css">
    <link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="/resources/assets/css/main.css">

    <link rel="shortcut icon" href="/resources/assets/images/favicon.png" type="image/x-icon">

    <title>JB Movie  - Online Ticket Booking Website</title>


</head>

<body>
    <!-- ==========Preloader========== -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- ==========Preloader========== -->
    <!-- ==========Overlay========== -->
    <div class="overlay"></div>
    <a href="#0" class="scrollToTop">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- ==========Overlay========== -->

    <!-- ==========Header-Section========== -->
    <header class="header-section">
        <div class="container">
            <div class="header-wrapper">
                <div class="logo">
                    <a href="index.jsp">
                        <img src="/resources/assets/images/logo/logo.png" alt="logo">
                    </a>
                </div>
                <ul class="menu">
                    <!-- <li>
                        <a href="#0" class="active">Home</a>
                        <ul class="submenu">
                            <li>
                                <a href="index.html">Home One</a>
                            </li>
                            <li>
                                <a href="#0" class="active">Home Two</a>
                            </li>
                        </ul>
                    </li> -->
                    <!-- <li>
                        <a href="#0">movies</a>
                        <ul class="submenu">
                            <li>
                                <a href="movie-grid.html">Movie Grid</a>
                            </li>
                            <li>
                                <a href="movie-list.html">Movie List</a>
                            </li>
                            <li>
                                <a href="movie-details.html">Movie Details</a>
                            </li>
                            <li>
                                <a href="movie-details-2.html">Movie Details 2</a>
                            </li>
                            <li>
                                <a href="movie-ticket-plan.html">Movie Ticket Plan</a>
                            </li>
                            <li>
                                <a href="movie-seat-plan.html">Movie Seat Plan</a>
                            </li>
                            <li>
                                <a href="movie-checkout.html">Movie Checkout</a>
                            </li>
                            <li>
                                <a href="popcorn.html">Movie Food</a>
                            </li>
                        </ul>
                    </li> -->
            		<li>
                        <a href="boxoffice.jbmovie"">Box Office</a>
                    </li>
            		<li>
                        <a href="goSearch.jbmovie">Search Movie</a>
                    </li>
                    
            		<li>
                        <a href="myPage.jbmovie?user_id=${loginSession.user_id}">My Page</a>
                    </li>
                    
                    <li>
                       <a href="goAppDownload.jbmovie">App Download</a>
                    </li>
                    <!-- 
                    <li>
                        <a href="goAboutUs.jbmovie">About Us</a>
                            
                    </li> -->
                    
                    <c:if test="${ loginSession == null }">
	                    
	                    <li class="header-button pr-0">
	                        <a href="goLogin.jbmovie">LOGIN</a>
	                    </li>
                    </c:if>
                    <c:if test="${ loginSession != null }">
	                    
	                    <li class="header-button pr-0">
	                        <a href="logout.jbmovie">LOGOUT</a>
	                    </li>
                    </c:if>
                </ul>
                <div class="header-bar d-lg-none">
					<span></span>
					<span></span>
					<span></span>
				</div>
            </div>
        </div>
    </header>
    <!-- ==========Header-Section========== -->
    <!-- ==========Window-Warning-Section========== -->
      <section class="window-warning inActive">
        <div class="lay"></div>
        <div class="warning-item">
            <h6 class="subtitle">Welcome! </h6>
            <h4 class="title">Select Your Seats</h4>
            <div class="thumb">
                <img src="/resources/assets/images/movie/seat-plan.png" alt="movie">
            </div>
<%--            <a href="movieSeat.jbmovie?title=${title }&image=${image }&genres=${genres }" class="custom-button seatPlanButton">Seat Plans<i class="fas fa-angle-right"></i></a>
 --%>          <a href="javascript:go_chk()" class="custom-button seatPlanButton">Seat Plans<i class="fas fa-angle-right"></i></a>
       </div>
    </section>
    <!-- ==========Window-Warning-Section========== -->

    <!-- ==========Banner-Section========== -->
    <section class="details-banner hero-area bg_img" data-background="${image}">
        <div class="container">
            <div class="details-banner-wrapper">
	            
                <div class="details-banner-content">
                    <h3 class="title">${title }</h3>
                    <div class="tags">
                        ${genres}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Banner-Section========== -->

    <!-- ==========Book-Section========== -->
    <section class="book-section bg-one">
        <div class="container">
            <form class="ticket-search-form two">
                <div class="form-group">
                    <div class="thumb">
                        <img src="/resources/assets/images/ticket/date.png" alt="ticket">
                    </div>
                    <span class="type">date</span>
                   
                    <select id="selectBar" class="select-bar" style="display: none;">                    
                        <option value="2022-08-13">2022/08/13</option>
                        <option value="2022-08-14">2022/08/14</option>
                        <option value="2022-08-15">2022/08/15</option>
                        <option value="2022-08-16">2022/08/16</option>
                        <option value="2022-08-17">2022/08/17</option>
                        <option value="2022-08-18">2022/08/18</option>
                    </select>
                </div>
            </form>
        </div>
    </section>
    <!-- ==========Book-Section========== -->

    <!-- ==========Movie-Section========== -->
    <div class="ticket-plan-section padding-bottom padding-top">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-9 mb-5 mb-lg-0">
                    <ul class="seat-plan-wrapper bg-five">
						<c:forEach var="theater" items="${theaterModel}">
							<li>
	                            <div class="movie-name">
	                                <div class="icons">
	                                    <i class="far fa-heart"></i>
	                                    <i class="fas fa-heart"></i>
	                                </div>
	                                <a href="#0" class="name">${theater.theater_name }</a>
	                                <div class="location-icon">
	                                    <a href="https://maps.google.com/?q=${theater.theater_address }" target="blank">
	                                    	<i class="fas fa-map-marker-alt"></i>
										    
										 </a> 
	                                </div>
	                            </div>
	                            <div class="movie-schedule">
	                                <div class="item" onClick="seat_info('${theater.theater_name }', '09:30')">
	                                    09:30
	                                </div>
	                                <div class="item" onClick="seat_info('${theater.theater_name }', '12:00')">
	                                    12:00
	                                </div>
	                                <div class="item" onClick="seat_info('${theater.theater_name }', '15:00')">
	                                    15:00 
	                                </div>
	                                <div class="item" onClick="seat_info('${theater.theater_name }', '17:00')">
	                                    17:00
	                                </div>
	                                <div class="item" onClick="seat_info('${theater.theater_name }', '19:30')">
	                                    19:30
	                                </div>
	                                
	                            </div>
	                        </li>  
						</c:forEach>	
					
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-10">
                    <div class="widget-1 widget-banner">
                        <div class="widget-1-body">
                            <a href="#0">
                                <img src="/resources/assets/images/sidebar/banner/banner03.jpg" alt="banner">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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

	var selected_date ;
 	var selected_name ;
 	var selected_time ;
 	
 	$('.select-bar').change(function() {
/*  		alert( $(this).val() )
 */ 		selected_date = $(this).val() 
 	})
 	
    
 	function seat_info(name , s_time) {
/*  		alert(name+"     "+s_time)
 */ 		selected_name = name ;
 		selected_time = s_time
 	} 
 	function go_chk(){
/*  		alert(selected_date)
 		alert(selected_name)
 		alert(selected_time) */
 		
 		location.href="movieSeat.jbmovie?mode=${mode}&booking_idx=${booking_idx}&title=${title }&image=${image }&genres=${genres }&movie_date="+selected_date+"&theater_name="+selected_name+"&movie_time="+selected_time ;
  	}
	
    </script>
</body>

</html>