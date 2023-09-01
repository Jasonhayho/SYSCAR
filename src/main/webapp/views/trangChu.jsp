<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Trang</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

  <script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.9"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
  <link rel="stylesheet" href="index.css">
</head>
<style>
  .caro1 {
    width: 1920px;
    height: 600px;
    overflow: hidden;
    position: relative;
  }

  .slide1 {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    transition: opacity 1s ease;
  }

  .slide1 img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .slide1.active {
    opacity: 1;
  }

  @keyframes carouselAnimation {
    0% {
      opacity: 0;
    }

    20% {
      opacity: 1;
    }

    33.33% {
      opacity: 1;
    }

    53.33% {
      opacity: 0;
    }

    100% {
      opacity: 0;
    }
  }

  .caro1 .slide1:nth-child(1) {
    animation: carouselAnimation 5s infinite;
  }

  .caro1 .slide1:nth-child(2) {
    animation: carouselAnimation 5s infinite 2s;
  }

  .caro1 .slide1:nth-child(3) {
    animation: carouselAnimation 5s infinite 2s;
  }

  .hover1 {
    color: black;
    text-decoration: none;
  }

  .hover1:hover {
    color: red;

  }


  .blockprice {
    position: relative;
    display: inline-block;
  }

  .blockprice p {
    position: absolute;
    top: 87%;
    right: 0;

    color: white;
    font-size: 20px;
    background-color: rgb(15, 178, 248);
    border-radius: 20px 1px 1px;


  }

  .link-hover {
    color: black;
  }

  .link-hover:hover {
    color: rgb(15, 178, 248);
  }
</style>

<body>


  <div class="container-fluid">

<%@include file="header.jsp" %>

  </div>


  <div id="demo" class=" carousel slide" data-bs-ride="carousel">

    <!-- Indicators/dots -->
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
      <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>

    </div>

    <!-- The slideshow/carousel -->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/banner-du-toan-chi-phi.jpg" alt="anh1" class="d-block w-100">
      </div>
      <div class="carousel-item">
        <img src="img/CtIEH2v2ste902803zfA-01.png" alt="anh2" class="d-block w-100">
      </div>

    </div>

    <!-- Left and right controls/icons -->
    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
      <span class="carousel-control-next-icon"></span>
    </button>
  </div>





  <div class="container">
    <div class="row py-5">
      <div class="col-12 col-md-6 pb-3">
        <div class="card">


          <img src="img/banner_1.webp" alt="">

        </div>

      </div>
      <div class=" col-12 col-md-6 pb-2">
        <div class="card">
          <img src="img/banner_2.webp" class="card-img-top" alt="sale">

        </div>
      </div>
    </div>

    <h3 class="text-center p-3"><strong>SẢN PHẨM NỖI BẬT</strong></h3>

    <div class="row pb-3 ">
      <div class="col-md-3">

        <div class="card rounded-0 blockprice">
          <img src="img/1.webp" class="card-img-top" alt="...">
          <strong>
            <p>600.000.000</p>
          </strong>
        </div>
        <div class="card-footer">
          <a href="#" class="text-decoration-none  link-hover">
            <strong>
              <p>Ford Everest XLT 4×2 MT</p>
            </strong>

          </a>
        </div>
        <div class="row text-center">
          <div class="col-md-6"><button type="button" class="rounded-0 btn btn-outline-info">

              <i class="bi bi-cart3"></i> TÙY CHỌN

            </button></div>
          <div class="col-md-6"><button type="button" class="rounded-0 btn btn-outline-info">

              <i class="bi bi-eye"></i>CHI TIẾT

            </button></div>
        </div>
      </div>
      <div class="col-md-3">

        <div class="card rounded-0 blockprice">
          <img src="img/2.webp" class="card-img-top" alt="...">
          <strong>
            <p>600.000.000</p>
          </strong>
        </div>
        <div class="card-footer">
          <a href="#" class="text-decoration-none  link-hover">
            <strong>
              <p>Ford Everest XLT 4×2 MT</p>
            </strong>

          </a>
        </div>
        <div class="row text-center">
          <div class="col-md-6"><button type="button" class="rounded-0 btn btn-outline-info">

              <i class="bi bi-cart3"></i> TÙY CHỌN

            </button></div>
          <div class="col-md-6"><button type="button" class="rounded-0 btn btn-outline-info">

              <i class="bi bi-eye"></i>CHI TIẾT

            </button></div>
        </div>
      </div>
      <div class="col-md-3 ">

        <div class="card rounded-0 blockprice">
          <img src="img/3.webp" class="card-img-top" alt="...">
          <strong>
            <p>600.000.000</p>
          </strong>
        </div>
        <div class="card-footer">
          <a href="#" class="text-decoration-none  link-hover">
            <strong>
              <p>Ford Everest XLT 4×2 MT</p>
            </strong>

          </a>
        </div>
        <div class="row text-center">
          <div class="col-md-6"><button type="button" class="rounded-0 btn btn-outline-info">

              <i class="bi bi-cart3"></i> TÙY CHỌN

            </button></div>
          <div class="col-md-6"><button type="button" class="rounded-0 btn btn-outline-info">

              <i class="bi bi-eye"></i>CHI TIẾT

            </button></div>
        </div>
      </div>
      <div class="col-md-3">

        <div class="card rounded-0 blockprice">
          <img src="img/4.webp" class="card-img-top" alt="...">
          <strong>
            <p>600.000.000</p>
          </strong>
        </div>
        <div class="card-footer">
          <a href="#" class="text-decoration-none  link-hover">
            <strong>
              <p>Ford Everest XLT 4×2 MT</p>
            </strong>

          </a>
        </div>
        <div class="row text-center">
          <div class="col-md-6"><button type="button" class="rounded-0 btn btn-outline-info">

              <i class="bi bi-cart3"></i> TÙY CHỌN

            </button></div>
          <div class="col-md-6"><button type="button" class="rounded-0 btn btn-outline-info">

              <i class="bi bi-eye"></i>CHI TIẾT

            </button></div>
        </div>
      </div>



    </div>

    <h3 class="text-center p-5"><strong>SẢN PHẨM MỚI</strong></h3>

    <div class="card mb-3 rounded-0 bg-dark">
      <div class="row g-0">

        <div class="col-md-4">
          <div class="card-body">
            <h5 class="card-title" style="color: rgb(15, 178, 248);">Ford EcoSport 1.5L AT Trend</h5>
            <p class="card-text text-secondary">
              Xăng 1.5L Duratec 16 Van <br>
              Hệ thống nhiên liệu phun đa điểm <br>
              Hệ thống lái trợ lực điện điều khiển điện tử <br>
              Hộp số tự động 6 cấp PowerShift.</p>
            <a style="color: rgb(15, 178, 248);" href="#">Xem thêm...</a>
          </div>
        </div>

        <div class="col-md-8 ">
          <img src="img/anhspnb.webp" class="img-fluid  " alt="...">
        </div>

      </div>
    </div>

  </div>



  <div class="container-fluid p-3" style="background-color: rgb(226, 230, 234);">

    <h3 class="text-center p-3 "><strong>
        XE CŨ <br>
        <p style="color: rgb(15, 178, 248);">________</p>
      </strong>
    </h3>

    <div class="row mb-3 ">
   
      <div class="caro1">
        <div class="slide1 img-fluid"><img src="img/slider_1.webp" alt="Slide 1"></div>
        <div class="slide1 img-fluid"><img src="img/banner.jpg" alt="Slide 2"></div>

      
    </div>

    </div>


  </div>

  <div class="container">

    <h3 class="text-center p-5"><strong>GIỚI THIỆU</strong></h3>

    <div class="card mb-3 m-3 rounded-0 bg-dark">
      <div class="row g-0">

        <div class="col-md-4">
          <div class="card-body">
            <h4 class="card-title" style="color: rgb(15, 178, 248);">Carcenter</h4>
            <p class="card-text text-secondary">
              Với 10 năm kinh nghiệm với tất cả các hãng xe hàng đầu thế giới. <br>
              Chúng tôi - Carcenter tự hào là cơ sở duy nhất đáp ứng mọi nhu cầu của khách hàng <br>
              <a style="color: rgb(15, 178, 248);" href="#">Xem thêm...</a>
          </div>
        </div>

        <div class="col-md-8 ">
          <img src="img/img_about_home.webp" class="w-100 " alt="...">
        </div>

      </div>
    </div>

    <div class="row p-5 text-center">
      <h3 class="text-center p-5"><strong>DỊCH VỤ CUNG CẤP</strong></h3>
      <div class="col-md-3">
        <div class="card border-0">
          <i class="bi bi-wrench " style="font-size: 60px; color: rgb(15, 178, 248);"></i>

          <a class="text-decoration-none link-dark" href="#">
            <strong>
              <p class="fs-5">Bảo hành</p>
            </strong>
          </a>
          <p>Dịch vụ bảo hành ở tất cả các <br>
            đại lý trên toàn quốc</p>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card border-0">
          <i class="bi bi-coin " style="font-size: 60px; color: rgb(15, 178, 248);"></i>
          <a class="text-decoration-none link-dark" href="#">
            <strong>
              <p class="fs-5">Trả góp</p>
            </strong>
          </a>
          <p>
            Xử lý trong vòng 24h sau khi<br>
            tiếp nhận hồ sơ mua xe</p>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card border-0">
          <i class="bi bi-car-front " style="font-size: 60px; color: rgb(15, 178, 248);"></i>
          <a class="text-decoration-none link-dark" href="#">
            <strong>
              <p class="fs-5">Lái thử</p>
            </strong>
          </a>
          <p>Carcenter có dịch vụ lái thử xe <br>
            tại các đại lý trên toàn quốc</p>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card border-0">
          <i class="bi bi-repeat " style="font-size: 60px; color: rgb(15, 178, 248);"></i>
          <a class="text-decoration-none link-dark" href="#">
            <strong>
              <p class="fs-5">Đổi trả</p>
            </strong>
          </a>
          <p>Hoàn trả trong vòng 10 ngày <br>
            kể từ ngày nhận xe</p>
        </div>
      </div>
    </div>



    <div class="row ">

      <h3 class="text-center pb-5"><strong>TIN TỨC</strong></h3>

      <div class="col-md-6 ">
        <div class="card border-0" >
          <img src="img/tt1.webp" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Mercedes-Benz C-Class Cabriolet 2017 chính thức ra mắt</h5>
            <p class="card-text">Là đối thủ cạnh tranh của Audi A4 Convertible và BMW 4-Series Convertible, <br>
               Mercedes-Benz C-Class Cabriolet mới được phát triển dựa trên C-Class Coupe.   
               Hãng Mercedes-</p>
            <a href="#" class="text-decoration-none">Xem thêm...</a>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card border-0" >
          <img src="img/tt2.webp" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Centenario - Siêu xe mạnh nhất của Lamborghini trình làng</h5>
            <p class="card-text">Với động cơ V12, hút khí tự nhiên, tạo ra công suất tối đa 770 mã lực, <br>
               Lamborghini Centenario có thể tăng tốc từ 0-100 km/h trong 2,8 giây và đạt vận tốc tối đa hơn 350</p>
            <a href="#" class="text-decoration-none">Xem thêm...</a>
          </div>
        </div>
      </div>
      

    </div>

  </div>

  <footer class="container-fluid bg-dark mt-4">

<div class="row  text-center p-3">

  <div class="col-md-3">
    <strong>
      <p class=" fs-5" style="color: rgb(15, 178, 248);" >
        Showroom
      </p>
    </strong>
    <p style="color: white;">Tầng 6 - Tòa nhà Ladeco - 266 Đội Cấn, Hà Nội</p>
  </div>
  <div class="col-md-3">
    <strong>
      <p class=" fs-5" style="color: rgb(15, 178, 248);" >
       Giờ mở cửa
      </p>
    </strong>
    <p style="color: white;">Thứ 2 - Thứ 6: 8:00 - 21:00 <br>
      Thứ 7 - Chủ nhật: 8:30 - 22:30</p>
  </div>
  <div class="col-md-3">
    <strong>
      <p class=" fs-5" style="color: rgb(15, 178, 248);" >
       Hỗ trợ tư vấn
      </p>
    </strong>
    <p style="color: white;">1900 6750
  </p>
  </div>
  <div class="col-md-3">
    <strong>
      <p class=" fs-5" style="color: rgb(15, 178, 248);" >
       Email
      </p>
    </strong>
    <p style="color: white;">syscars@gmail.com
  </p>

  </div>
</div>
   
<div class="row pb-3">
  <div class="col-md-10">
   <p class="text-light"> © Bản quyền thuộc về Avent Team | Cung cấp bởi Sapo</p>
  </div>
  <div class="col-md-2 ">
    <button type="button" class="btn btn-secondary">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
<path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"></path>
</svg>
    </button> 

    <button type="button" class="btn btn-secondary">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
<path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"></path>
</svg>
    </button>

    <button type="button" class="btn btn-secondary">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
<path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z"></path>
</svg>
    </button>
    <button type="button" class="btn btn-secondary">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
<path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
</svg>
    </button>
  </div>
</div>


    
  </footer>






</body>

</html>