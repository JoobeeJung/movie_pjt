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
	                <h1 class="title bold">Search <span class="color-theme">movies</span></h1>
	                <p>Search movies with keywords whatever you want!</p>
	            </div>
	        </div>
	    </section>    
    <!-- ==========Banner-Section========== -->

    <!-- ==========Ticket-Search========== -->
    <section class="search-ticket-section padding-top pt-lg-0">
        <div class="container">
            <div class="search-tab bg_img" data-background="/resources/assets/images/ticket/ticket-bg01.jpg">
                <div class="row align-items-center mb--20">
                    <div class="col-lg-6 mb-20">
                        <div class="search-ticket-header">
                            <h6 class="category">welcome to JB Movie </h6>
                            <h3 class="title">what are you looking for</h3>
                        </div>
                    </div>
                    <!-- <div class="col-lg-6 mb-20">
                        <ul class="tab-menu ticket-tab-menu">
                            <li class="active">
                                <div class="tab-thumb">
                                    <img src="/resources/assets/images/ticket/ticket-tab01.png" alt="ticket">
                                </div>
                                <span>movie</span>
                            </li>
                           
                        </ul>
                    </div> -->
                </div>
                <div class="tab-area">
                    <div class="tab-item active">
                        <form class="ticket-search-form">
                            <div class="form-group large">
                                <input id="keyword" type="text" placeholder="Search for Movies" >
                               	<a onclick="goSearch()"><i class="fas fa-search"></i></a>
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>    
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
     								
									<div class="col-sm-6 col-lg-4">
                                        <div class="movie-grid">
                                            <div class="movie-thumb c-thumb">
                                                <a href="movieDetails.jbmovie?IMDbId=${boxoffice.id}">
                                                    <img src="${boxoffice.image }" alt="movie" height=500px>
                                                </a>
                                            </div>
                                            <div class="movie-content bg-one">
                                                <h5 class="title m-0">
                                                    <a href="movieDetails.jbmovie?IMDbId=${boxoffice.id}">${boxoffice.title }</a>
                                                </h5>
                                               
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
                                            <a href="movieDetails.jbmovie?IMDbId=${boxoffice.id}" class="w-100 bg_img h-100" data-background="${boxoffice.image }">
                                                <img class="d-sm-none" src="${boxoffice.image }"alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <h5 class="title">
                                                <a href="movieDetails.jbmovie?IMDbId=${boxoffice.id}">${boxoffice.title }</a>
                                            </h5>
                                            <ul class="movie-rating-percent">
                                                    <li>
                                                        <div class="thumb">
                                                        </div>
                                                        <span class="content"><%-- ${boxoffice.description } --%></span>
                                                    </li>
                                                    
                                                </ul>
                                            <div class="book-area">
                                                <div class="book-ticket">
                                                    
                                                    <div class="react-item mr-auto">
                                                        <a href="#0">
                                                            <div class="thumb">
                                                           
                                                                <img src="/resources/assets/images/icons/book.png" alt="icons">
                                                           </div>
                                                            <span> ${boxoffice.description }</span>
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
                            <%-- <div class="tab-item">
                                <div class="movie-area mb-10">
                                
		                        <c:if test="${ boxofficeModel != null }">
									<c:forEach var="boxoffice" items="${boxofficeModel}">
									<div class="movie-list">
                                        <div class="movie-thumb c-thumb">
                                            <a href="movieDetails.jbmovie" class="w-100 bg_img h-100" data-background="${boxoffice.image }">
                                                <img class="d-sm-none" src="${boxoffice.image }"alt="movie">
                                            </a>
                                        </div>
                                        <div class="movie-content bg-one">
                                            <h5 class="title">
                                                <a href="movieDetails.jbmovie?IMDbId=${boxoffice.id}">${boxoffice.title }</a>
                                            </h5>
                                           
                                          
                                        </div>
                                    </div>
									</c:forEach>	
								</c:if>
                                </div>
                            </div>  --%>
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
    
    <script type="text/javascript">
	   function goSearch(){
	   	   var keyword = $("#keyword").val();
	   	   location.href = "searchMovie.jbmovie?keyword="+keyword;
	   }
	   </script>
</body>

</html>