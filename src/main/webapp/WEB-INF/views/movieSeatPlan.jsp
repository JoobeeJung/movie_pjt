<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">

<%@include file="./include/header.jsp"%>


    <!-- ==========Banner-Section========== -->
    <section class="details-banner hero-area bg_img seat-plan-banner" data-background="${image}">
        <div class="container">
            <div class="details-banner-wrapper">
                <div class="details-banner-content style-two">
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
                    &nbsp; ${movie_date}
                </div>
                <div class="form-group">
                    <div class="thumb">
                        <img src="/resources/assets/images/ticket/cinema.png" alt="ticket">
                    </div>
                    <span class="type">cinema</span>
                    &nbsp;
                    ${theater_name }
                </div>
                <div class="form-group">
                    <div class="thumb">
                        <img src="/resources/assets/images/ticket/exp.png" alt="ticket">
                    </div>
                    <span class="type">Time</span>
                     &nbsp; ${movie_time }
                </div>
            </form>
        </div>
    </section>
    <!-- ==========Book-Section========== -->


    <!-- ==========Movie-Section========== -->
    <div class="seat-plan-section padding-bottom padding-top">
        <div class="container">
            <div class="screen-area">
                <h4 class="screen">screen</h4>
                <div class="screen-thumb">
                    <img src="/resources/assets/images/movie/screen-thumb.png" alt="movie">
                </div>
<!--                 <h5 class="subtitle">silver plus</h5>
 -->                <div class="screen-wrapper">
                    <ul class="seat-area">
                        <li class="seat-line">
                            <span>G</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>G</span>
                        </li>
                        <li class="seat-line">
                            <span>f</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat seat-free">
                                            <img src="/resources/assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f7</span>
                                        </li>
                                        <li class="single-seat seat-free">
                                            <img src="/resources/assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f8</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat seat-free">
                                            <img src="/resources/assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f9</span>
                                        </li>
                                        <li class="single-seat seat-free">
                                            <img src="/resources/assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f10</span>
                                        </li>
                                        <li class="single-seat seat-free">
                                            <img src="/resources/assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f11</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>f</span>
                        </li>
                    </ul>
                </div>
<!--                 <h5 class="subtitle">silver plus</h5>
 -->                <div class="screen-wrapper">
                    <ul class="seat-area couple">
                        <li class="seat-line">
                            <span>e</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>e</span>
                        </li>
                        <li class="seat-line">
                            <span>d</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat" >
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">D6 D7</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                       <!--  <li class="single-seat seat-free-two" >
                                            <img src="/resources/assets/images/movie/seat02-booked.png" alt="seat">
                                            <span class="sit-num" id='sit-num'>D7:D8</span>
                                        </li> -->
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">                                            
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>d</span>
                        </li>
                        <li class="seat-line">
                            <span>c</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>c</span>
                        </li>
                        <li class="seat-line">
                            <span>b</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num" id='sit-num'>b7:b8</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>b</span>
                        </li>
                        <li class="seat-line">
                            <span>a</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat seat-free-two">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a1 a2</span>
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a3 a4</span>
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat seat-free-two">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a5 a6</span>
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a7 a8</span>
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a9 a10</span>
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>                        
                                       <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>                                        
                                        <li class="single-seat">
                                            <img src="/resources/assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <!-- <li class="single-seat seat-free-two">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a11 a12</span>
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="/resources/assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a13 a14</span>
                                        </li> -->
                                    </ul>
                                </li>
                            </ul>
                            <span>a</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="proceed-book bg_img" data-background="/resources/assets/images/movie/movie-bg-proceed.jpg">
                <div class="proceed-to-book">
                    <div class="book-item">
                        <span>You have Choosed Seat</span>
                        <h3 class="title" id="seat-title"></h3>
                    </div>
                    <div class="book-item">
                        <span>total price</span>
                        <h3 class="title" id="seat-price"></h3>
                    </div>
                    <div class="book-item">
                        <a href="javascript:movieCheckout()" class="custom-button">proceed</a>
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
    
    
    var isAndroid = false
    if(window.navigator.userAgent.toUpperCase().indexOf("ANDROID") > -1 ) isAndroid = true
    
    /* console.log('isAndroid:'+isAndroid)
    console.log(window.navigator.userAgent) */
    
    var book = 0;
    $(".seat-free img").on('click', function(e) {
      if(book == 0) {
        $(this).attr("src","/resources/assets/images/movie/seat01-free.png");
        book = 1;
      }
      else if(book == 1) {
        $(this).attr("src","/resources/assets/images/movie/seat01-booked.png");
        book = 0;
      }
    });
    
    var bookTwo = 1; 
    var ary ; 
    $(".seat-free-two img").on('click', function(e) {
      if(bookTwo == 0) {
        $(this).attr("src","/resources/assets/images/movie/seat02-free.png");
        bookTwo = 1;
      }
      else if(bookTwo == 1) {
        $(this).attr("src","/resources/assets/images/movie/seat02-booked.png");
        bookTwo = 0;
        seat_num = $('#sit-num').text()
        ary = seat_num.split(":")
        $('#seat-title').html(ary)
        $('#seat-price').html("$30")
      }
    });
    
    function movieCheckout(){
    	if(isAndroid){
    		window.android.moveCheckout("${title}", "${theater_name}", "${movie_date}","${movie_time}", ary[0]+ary[1])
    	}else {
        	location.href="movieCheckout.jbmovie?mode=${mode}&booking_idx=${booking_idx}&title=${title }&image=${image }&genres=${genres }&movie_date=${movie_date}&theater_name=${theater_name}&movie_time=${movie_time}&seat01="+ary[0]+"&seat02="+ary[1] ; 
    	}
    }
    </script>
</body>

</html>