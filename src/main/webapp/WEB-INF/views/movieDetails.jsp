<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<%@include file="./include/header.jsp"%>

<body>
    <!-- ==========Banner-Section========== -->
    <section class="details-banner bg_img" data-background="${movieDetailsModel.image}">
        <div class="container">
            <div class="details-banner-wrapper">
                <div class="details-banner-thumb">
                    <img src="${movieDetailsModel.image}" alt="movie">
                </div>
                <div class="details-banner-content offset-lg-3">
                    <h3 class="title">${movieDetailsModel.title}</h3>
                    <div class="tags">
						${movieDetailsModel.countries}
                    </div>
                    <a href="#0" class="button">${movieDetailsModel.genres}</a>
                    <div class="social-and-duration">
                        <div class="duration-area">
                            <div class="item">
                                <i class="fas fa-calendar-alt"></i><span>${movieDetailsModel.releaseDate}</span>
                            </div>
                            <div class="item">
                                <i class="far fa-clock"></i><span>${movieDetailsModel.runtimeStr}</span>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- ==========Banner-Section========== -->


    <!-- ==========Book-Section========== -->
	<c:if test="${ boxoffice }">
    <section class="book-section bg-one">
        <div class="container">
            <div class="book-wrapper offset-lg-3">
                <a href="movieTicket.jbmovie?title=${movieDetailsModel.title }&image=${movieDetailsModel.image }&genres=${movieDetailsModel.genres }" class="custom-button">book tickets</a>
            </div>
        </div>
    </section>
    </c:if>
    <!-- ==========Book-Section========== -->

    <!-- ==========Movie-Section========== -->
    <section class="movie-details-section padding-top padding-bottom">
        <div class="container">
            <div class="row justify-content-center flex-wrap-reverse mb--50">
                <div class="col-lg-3 col-sm-10 col-md-6 mb-50">
                    <div class="widget-1 widget-tags">
                        <ul>
                            <li>
                                <a>${movieDetailsModel.keywords}</a>
                            </li>
                        </ul>
                    </div>
                    <div class="widget-1 widget-offer">
                        <h3 class="title">Applicable offer</h3>
                        <div class="offer-body">
                            <div class="offer-item">
                                <div class="thumb">
                                    <img src="/resources/assets/images/sidebar/offer01.png" alt="sidebar">
                                </div>
                                <div class="content">
                                    <h6>
                                        <a href="#0">Amazon Pay Cashback Offer</a>
                                    </h6>
                                    <p>Win Cashback Upto Rs 300*</p>
                                </div>
                            </div>
                            <div class="offer-item">
                                <div class="thumb">
                                    <img src="/resources/assets/images/sidebar/offer02.png" alt="sidebar">
                                </div>
                                <div class="content">
                                    <h6>
                                        <a href="#0">PayPal Offer</a>
                                    </h6>
                                    <p>Transact first time with Paypal and
                                        get 100% cashback up to Rs. 500</p>
                                </div>
                            </div>
                            <div class="offer-item">
                                <div class="thumb">
                                    <img src="/resources/assets/images/sidebar/offer03.png" alt="sidebar">
                                </div>
                                <div class="content">
                                    <h6>
                                        <a href="#0">HDFC Bank Offer</a>
                                    </h6>
                                    <p>Get 15% discount up to INR 100* 
                                        and INR 50* off on F&B T&C apply</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="widget-1 widget-banner">
                        <div class="widget-1-body">
                            <a href="#0">
                                <img src="/resources/assets/images/sidebar/banner/banner01.jpg" alt="banner">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 mb-50">
                    <div class="movie-details">
                        
                        <div class="tab summery-review">
                            <ul class="tab-menu">
                                <li class="active">
                                    SUMMARY
                                </li>
                                <!-- <li>
                                    user review <span>147</span>
                                </li> -->
                            </ul>
                            <div class="tab-area">
                                <div class="tab-item active">
                                    <div class="item">
                                        <h5 class="sub-title">Synopsis</h5>
                                        <p>${movieDetailsModel.plot }</p>
                                    </div>
                                    <div class="item">
                                        <div class="header">
                                            <h5 class="sub-title">directors</h5>
                                            <div class="navigation">
                                                <div class="cast-prev"><i class="flaticon-double-right-arrows-angles"></i></div>
                                                <div class="cast-next"><i class="flaticon-double-right-arrows-angles"></i></div>
                                            </div>
                                        </div>
                                        <div class="casting-slider owl-carousel">
                                         <c:set var="directors" value="${fn:split(movieDetailsModel.directors,',')}" />
                               	 			<c:forEach var="director" items="${fn:split(movieDetailsModel.directors,',')}">

				                            <div class="cast-item">
                                                <div class="cast-thumb">
                                                    <a href="#0">
                                                        <img src="/resources/assets/images/cast/cast01.jpg" alt="cast">
                                                    </a>
                                                </div>
                                                <div class="cast-content">
                                                    <h6 class="cast-title">${director}</h6>
                                                    <span class="cate">director</span>
                                                </div>
                                            </div> 
                                            </c:forEach>
										
										
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="header">
                                            <h5 class="sub-title">cast</h5>
                                            <div class="navigation">
                                                <div class="cast-prev"><i class="flaticon-double-right-arrows-angles"></i></div>
                                                <div class="cast-next"><i class="flaticon-double-right-arrows-angles"></i></div>
                                            </div>
                                        </div>
                                        <div class="casting-slider owl-carousel">
                                        
                                         <c:set var="stars" value="${fn:split(movieDetailsModel.stars,',')}" />
                                       	 <c:forEach var="star" items="${stars}">

				                            <div class="cast-item">
                                                <div class="cast-thumb">
                                                    <a href="#0">
                                                        <img src="/resources/assets/images/cast/cast01.jpg" alt="cast">
                                                    </a>
                                                </div>
                                                <div class="cast-content">
                                                    <h6 class="cast-title">${star}</h6>
                                                    <span class="cate">actor</span>
                                                </div>
                                            </div> 
                                            </c:forEach>
										
										
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="header">
                                            <h5 class="sub-title">writers</h5>
                                            <div class="navigation">
                                                <div class="cast-prev-2"><i class="flaticon-double-right-arrows-angles"></i></div>
                                                <div class="cast-next-2"><i class="flaticon-double-right-arrows-angles"></i></div>
                                            </div>
                                        </div>
                                        <div class="casting-slider-two owl-carousel">
                                        <c:set var="writers" value="${fn:split(movieDetailsModel.writers,',')}" />
                                       	 <c:forEach var="writer" items="${writers}">

				                            <div class="cast-item">
                                                <div class="cast-thumb">
                                                    <a href="#0">
                                                        <img src="/resources/assets/images/cast/cast01.jpg" alt="cast">
                                                    </a>
                                                </div>
                                                <div class="cast-content">
                                                    <h6 class="cast-title">${writer}</h6>
                                                    <span class="cate">actor</span>
                                                </div>
                                            </div> 
                                            </c:forEach>
                                        </div>
                                    </div>
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