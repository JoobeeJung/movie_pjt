<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

    <!-- ==========Page-Title========== -->
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
    <!-- ==========Page-Title========== -->

    <!-- ==========Movie-Section========== -->
    <div class="movie-facility padding-bottom padding-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="booking-summery bg-one">
                        <h4 class="title">booking summary</h4>
                        <ul>
                            <li>
                                <h6 class="subtitle">${title }</h6>
<%--                                 <span class="info">${genres }</span>
 --%>                            </li>
                            <li>
                                <h6 class="subtitle"><span>${theater_name }</span><span>02</span></h6>
                                <div class="info"><span>${movie_date } &nbsp; ${movie_time }</span> <span>Tickets</span></div>
                            </li>
                            <li>
                                <h6 class="subtitle"><span>Seat Number</span><span>${seat01 } &nbsp; ${seat02 }</span></h6>
                            </li>
                            <li>
                                <h6 class="subtitle mb-0"><span>Tickets  Price</span><span>$30</span></h6>
                            </li>
                        </ul>
                     
                        <ul>
                            <li>
<!--                                 <span class="info"><span>price</span><span>$207</span></span>
 -->                                <span class="info"><span>vat</span><span>$3</span></span>
                            </li>
                        </ul>
                    </div>
                    <div class="proceed-area  text-center">
                        <h6 class="subtitle"><span>Amount Payable</span><span>$33</span></h6>
                        <a href="movieBooking.jbmovie?mode=${mode }&booking_idx=${booking_idx}&movie_name=${title}&booking_date=${movie_date}&theater_name=${theater_name}&booking_time=${movie_time}&user_id=${loginSession.user_id}&seat_num=${seat01} ${seat02}" class="custom-button back-button">proceed</a>
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
</body>

</html>