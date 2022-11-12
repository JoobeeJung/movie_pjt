<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">

<%@include file="./include/header.jsp"%>


<body>
  

    <!-- ==========Banner-Section========== -->
    <section class="main-page-header speaker-banner bg_img" data-background="/resources/assets/images/banner/banner07.jpg">
        <div class="container">
            <div class="speaker-banner-content">
                <h2 class="title">contact us</h2>
                <ul class="breadcrumb">
                    <li>
                        <a href="index.html">
                            Home
                        </a>
                    </li>
                    <li>
                        contact us
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <!-- ==========Banner-Section========== -->

    <!-- ==========Contact-Section========== -->
    <section class="contact-section padding-top">
        <div class="contact-container">
            <div class="bg-thumb bg_img" data-background="/resources/assets/images/contact/contact.jpg"></div>
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-md-7 col-lg-6 col-xl-5">
                        <div class="section-header-3 left-style">
                            <span class="cate">contact us</span>
                            <h2 class="title">get in touch</h2>
                            <p>We’d love to talk about how we can work together. Send us a message below and we’ll respond as soon as possible.</p>
                        </div>
                        <form class="contact-form" id="contact_form_submit">
                            <div class="form-group">
                                <label for="name">Name <span>*</span></label>
                                <input type="text" placeholder="Enter Your Full Name" name="name" id="name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email <span>*</span></label>
                                <input type="text" placeholder="Enter Your Email" name="email" id="email" required>
                            </div>
                            <div class="form-group">
                                <label for="subject">Subject <span>*</span></label>
                                <input type="text" placeholder="Enter Your Subject" name="subject" id="subject" required>
                            </div>
                            <div class="form-group">
                                <label for="message">Message <span>*</span></label>
                                <textarea name="message" id="message" placeholder="Enter Your Message" required></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Send Message">
                            </div>
                        </form>
                    </div>
                    <div class="col-md-5 col-lg-6">
                        <div class="padding-top padding-bottom contact-info">
                            <div class="info-area">
                                <div class="info-item">
                                    <div class="info-thumb">
                                        <img src="/resources/assets/images/contact/contact01.png" alt="contact">
                                    </div>
                                    <div class="info-content">
                                        <h6 class="title">phone number</h6>
                                        <a href="Tel:82828282034">+1234 56789</a>
                                    </div>
                                </div>
                                <div class="info-item">
                                    <div class="info-thumb">
                                        <img src="/resources/assets/images/contact/contact02.png" alt="contact">
                                    </div>
                                    <div class="info-content">
                                        <h6 class="title">Email</h6>
                                        <a href="Mailto:info@gmail.com">info@Boleto .com</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Contact-Section========== -->

    <!-- ==========Contact-Counter-Section========== -->
    <section class="contact-counter padding-top padding-bottom">
        <div class="container">
            <div class="row justify-content-center mb-30-none">
                <div class="col-sm-6 col-md-3">
                    <div class="contact-counter-item">
                        <div class="contact-counter-thumb">
                            <i class="fab fa-facebook-f"></i>
                        </div>
                        <div class="contact-counter-content">
                            <div class="counter-item">
                                <h5 class="title odometer" data-odometer-final="130">0</h5>
                                <h5 class="title">k</h5>
                            </div>
                            <p>Followers</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="contact-counter-item active">
                        <div class="contact-counter-thumb">
                            <i class="fas fa-users"></i>
                        </div>
                        <div class="contact-counter-content">
                            <div class="counter-item">
                                <h5 class="title odometer" data-odometer-final="35">0</h5>
                                <h5 class="title">k</h5>
                            </div>
                            <p>Members</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="contact-counter-item">
                        <div class="contact-counter-thumb">
                            <i class="fab fa-twitter"></i>
                        </div>
                        <div class="contact-counter-content">
                            <div class="counter-item">
                                <h5 class="title odometer" data-odometer-final="47">0</h5>
                                <h5 class="title">k</h5>
                            </div>
                            <p>Followers</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="contact-counter-item">
                        <div class="contact-counter-thumb">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="contact-counter-content">
                            <div class="counter-item">
                                <h5 class="title odometer" data-odometer-final="291">0</h5>
                                <h5 class="title">k</h5>
                            </div>
                            <p>Subscribers</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Contact-Counter-Section========== -->

    <!-- ==========Newslater-Section========== -->
    <footer class="footer-section">
        <div class="newslater-section padding-bottom">
            <div class="container">
                <div class="newslater-container bg_img" data-background="/resources/assets/images/newslater/newslater-bg01.jpg">
                    <div class="newslater-wrapper">
                        <h5 class="cate">subscribe to Boleto </h5>
                        <h3 class="title">to get exclusive benifits</h3>
                        <form class="newslater-form">
                            <input type="text" placeholder="Your Email Address">
                            <button type="submit">subscribe</button>
                        </form>
                        <p>We respect your privacy, so we never share your info</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="footer-top">
                <div class="logo">
                    <a href="index-1.html">
                        <img src="/resources/assets/images/footer/footer-logo.png" alt="footer">
                    </a>
                </div>
                <ul class="social-icons">
                    <li>
                        <a href="#0">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#0" class="active">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#0">
                            <i class="fab fa-pinterest-p"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#0">
                            <i class="fab fa-google"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#0">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="footer-bottom">
                <div class="footer-bottom-area">
                    <div class="left">
                        <p>Copyright © 2020.All Rights Reserved By <a href="#0">Boleto </a></p>
                    </div>
                    <ul class="links">
                        <li>
                            <a href="#0">About</a>
                        </li>
                        <li>
                            <a href="#0">Terms Of Use</a>
                        </li>
                        <li>
                            <a href="#0">Privacy Policy</a>
                        </li>
                        <li>
                            <a href="#0">FAQ</a>
                        </li>
                        <li>
                            <a href="#0">Feedback</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- ==========Newslater-Section========== -->


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
    <script src="/resources/assets/js/contact.js"></script>
    <script src="/resources/assets/js/main.js"></script>
</body>

</html>