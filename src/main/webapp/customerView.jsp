<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 3/8/2022
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Colo Shop</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Colo Shop Template">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="/styles/bootstrap4/bootstrap.min.css">
  <link href="/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
  <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
  <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/animate.css">
  <link rel="stylesheet" type="text/css" href="/styles/main_styles.css">
  <link rel="stylesheet" type="text/css" href="/styles/responsive.css">
</head>

<body>

<div class="super_container">

  <!-- Header -->

  <header class="header trans_300">

    <!-- Top Navigation -->

    <div class="top_nav">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="top_nav_left">free shipping on all u.s orders over $50</div>
          </div>
          <div class="col-md-6 text-right">
            <div class="top_nav_right">
              <ul class="top_nav_menu">

                <!-- Currency / Language / My Account -->

                <li class="currency">
                  <a href="#">
                    usd
                    <i class="fa fa-angle-down"></i>
                  </a>
                  <ul class="currency_selection">
                    <li><a href="#">cad</a></li>
                    <li><a href="#">aud</a></li>
                    <li><a href="#">eur</a></li>
                    <li><a href="#">gbp</a></li>
                  </ul>
                </li>
                <li class="language">
                  <a href="#">
                    English
                    <i class="fa fa-angle-down"></i>
                  </a>
                  <ul class="language_selection">
                    <li><a href="#">French</a></li>
                    <li><a href="#">Italian</a></li>
                    <li><a href="#">German</a></li>
                    <li><a href="#">Spanish</a></li>
                  </ul>
                </li>
                <li class="account">
                  <a href="#">
                    <c:if test="${usename!=null}">
                      ${usename}
                    </c:if>
                    <c:if test="${usename==null}">
                      My Account

                    </c:if>
                    <i class="fa fa-angle-down"></i>
                  </a>
                  <ul class="account_selection">
                    <c:if test="${usename!=null}">
                    <li><a href="/home?action=logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
                     </c:if>
                     <c:if test="${usename==null}">
                    <li><a href="/signin.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
                    <li><a href="/register.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
                     </c:if>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Main Navigation -->

    <div class="main_nav_container">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-right">
            <div class="logo_container">
              <a href="#">colo<span>shop</span></a>
            </div>
            <nav class="navbar">
              <ul class="navbar_menu">
                <li><a href="/home?action=home">home</a></li>
                <li><a href="/home?action=categories">shop</a></li>
                <li><a href="#">promotion</a></li>
                <li><a href="#">pages</a></li>
                <li><a href="#">blog</a></li>
                <li><a href="contact.jsp">contact</a></li>
              </ul>
              <ul class="navbar_user">
                <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
                <li class="checkout">
                  <a href="#">
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <span id="checkout_items" class="checkout_items">2</span>
                  </a>
                </li>
              </ul>
              <div class="hamburger_container">
                <i class="fa fa-bars" aria-hidden="true"></i>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </div>

  </header>



  <!-- Slider -->

  <div class="main_slider" style="background-image:url(images/slider_1.jpg)">
    <div class="container fill_height">
      <div class="row align-items-center fill_height">
        <div class="col">
          <div class="main_slider_content">
            <h6>Spring / Summer Collection 2017</h6>
            <h1>Get up to 30% Off New Arrivals</h1>
            <div class="red_button shop_now_button"><a href="/home?action=categories">shop now</a></div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Banner -->

  <div class="banner">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="banner_item align-items-center" style="background-image:url(images/banner_1.jpg)">
            <div class="banner_category">
              <a href="/home?action=categories&category_id=1">women's</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="banner_item align-items-center" style="background-image:url(images/banner_2.jpg)">
            <div class="banner_category">
              <a href="/home?action=categories&category_id=2">accessories's</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="banner_item align-items-center" style="background-image:url(images/banner_3.jpg)">
            <div class="banner_category">
              <a href="/home?action=categories&category_id=3">men's</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>




  <!-- Best Sellers -->

  <div class="best_sellers">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <div class="section_title new_arrivals_title">
            <h2>Best Sellers</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <div class="product_slider_container">
            <div class="owl-carousel owl-theme product_slider">

              <!-- Slide 1 -->

              <div class="owl-item product_slider_item">
                <div class="product-item">
                  <div class="product discount">
                    <div class="product_image">
                      <img src="images/product_1.png" alt="">
                    </div>
                    <div class="favorite favorite_left"></div>
                    <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
                    <div class="product_info">
                      <h6 class="product_name"><a href="single.jsp">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>
                      <div class="product_price">$520.00<span>$590.00</span></div>
                    </div>
                  </div>
                </div>
              </div>






            </div>

            <!-- Slider Navigation -->

            <div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
              <i class="fa fa-chevron-left" aria-hidden="true"></i>
            </div>
            <div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
              <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Benefit -->

  <div class="benefit">
    <div class="container">
      <div class="row benefit_row">
        <div class="col-lg-3 benefit_col">
          <div class="benefit_item d-flex flex-row align-items-center">
            <div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
            <div class="benefit_content">
              <h6>free shipping</h6>
              <p>Suffered Alteration in Some Form</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 benefit_col">
          <div class="benefit_item d-flex flex-row align-items-center">
            <div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
            <div class="benefit_content">
              <h6>cach on delivery</h6>
              <p>The Internet Tend To Repeat</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 benefit_col">
          <div class="benefit_item d-flex flex-row align-items-center">
            <div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>
            <div class="benefit_content">
              <h6>45 days return</h6>
              <p>Making it Look Like Readable</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 benefit_col">
          <div class="benefit_item d-flex flex-row align-items-center">
            <div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
            <div class="benefit_content">
              <h6>opening all week</h6>
              <p>8AM - 09PM</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>





  <!-- Footer -->

  <footer class="footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
            <ul class="footer_nav">
              <li><a href="#">Blog</a></li>
              <li><a href="#">FAQs</a></li>
              <li><a href="contact.jsp">Contact us</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
            <ul>
              <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="footer_nav_container">
            <div class="cr">©2018 All Rights Reserverd. Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">Colorlib</a> &amp; distributed by <a href="https://themewagon.com">ThemeWagon</a></div>
          </div>
        </div>
      </div>
    </div>
  </footer>

</div>

<script src="/js/jquery-3.2.1.min.js"></script>
<script src="/styles/bootstrap4/popper.js"></script>
<script src="/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/plugins/easing/easing.js"></script>
<script src="/js/custom.js"></script>
</body>

</html>