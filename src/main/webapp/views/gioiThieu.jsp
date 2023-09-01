<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

<head>
  <title>Giới Thiệu</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<style>
    .hover1 {
    color: black;
    text-decoration: none;
  }

  .hover1:hover {
    color: red;

  }

 


</style>
<body>
    <header >

        <div class="container-fluid">
    
          <div class="row p-3 bg-secondary">
    
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
              <div class="container-fluid">
    
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                  data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
    
          <div class="text-center ms-5">
            <a class="navbar-brand" href="#"><img style="width: 80px;" src="img/logo.png" alt="logo"></a>

          </div>
    
                <div class="offcanvas offcanvas-start" id="navbarSupportedContent">
                  <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasLabel"><strong class="text-center">Memu</strong></h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                      aria-label="Close"></button>
                  </div>
    
                  <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="/trangChu"><strong class=" fs-5">TRANG CHỦ
                        </strong></a>
                    </li>
    
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="/sanpham" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <STRONG class=" fs-5">SẢN PHẨM</STRONG>
                      </a>
                      <ul class="dropdown-menu bg-secondary">
                        <li><a class="dropdown-item" href="/sanpham">11FCSDFSDF</a></li>
                        <li><a class="dropdown-item" href="/sanpham">DSFGDSGSDF</a></li>
                        <li>
                          <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="/sanpham">SDFGSDGSDF</a></li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="/gioiThieu"><strong class=" fs-5">GIỚI THIỆU
                        </strong></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="/lienHe"><strong class=" fs-5">LIÊN HỆ
                        </strong></a>
                    </li>
    
                  </ul>
                  <div class=" d-sm-block d-md-none">
                    <div class="input-group w-100">
                      <span class="input-group-text" id="basic-addon1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                          class="bi bi-search" viewBox="0 0 16 16">
                          <path
                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z">
                          </path>
                        </svg>
                      </span>
                      <input type="text" class="form-control" placeholder="Input group example"
                        aria-label="Input group example" aria-describedby="basic-addon1">
                    </div>
                  </div>
                </div>
                <div class="p-2 d-none d-md-block">
                  <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Tìm kiếm sản phẩm..." aria-label="Search">
                    <button class="btn btn-outline-warning" type="submit"><strong>Search</strong></button>
                  </form>
                </div>
                <div class="ms-2 d-none d-sm-none d-md-none d-lg-block">
    
                  <a href="#" class="p-1 hover1">
                    <strong class=" ">
                      <i class="bi bi-person-fill-add"></i>ĐĂNG KÍ
                    </strong>
                  </a>
    
                  <a href="#" class="p-1 hover1">
                    <strong class=" ">
                      <i class="bi bi-person-fill"></i>ĐĂNG NHẬP
                    </strong>
                  </a>
    
                  <a href="#" class="p-1 hover1 ">
                    <strong>
                      <i class="bi bi-cart4"></i>
                    </strong>
                  </a>
    
                </div>
    
              </div>
    
            </nav>
    
          </div>
    
        </div>
    
      </header>
    
      <main>
        <div class="container my-4">
          <div class="row">
            <div class="fs-2 text-center"><b>Giới Thiệu</b> </div>
            <p><b>I. QUÁ TRÌNH HÌNH THÀNH VÀ PHÁT TRIỂN</b></p>
            <p>Trong những năm qua, xã hội phát triển, kinh tế tăng trưởng đồng thời chất lượng cuộc sống của người dân ngày
              càng càng được nâng cao, kèm theo đấy là nhu cầu mua sắm các sản phẩm phục vụ nhu cầu đi lại của mình.</p>
            <p>Thế giới Ôtô Carcenter khai trương Showroom tại số 442 Đội Cấn - Cống Vị - Ba Đình - Hà Nội, chính thức tham
              gia vào lĩnh vực kinh doanh bán lẻ ô tô, tạo ra một phong cách mua sắm hoàn toàn mới với người dân thủ đô,
              thông qua cung cấp các sản phẩm và dịch vụ tới người tiêu dùng.</p>
            <p>TẦM NHÌN:</p>
            <p>Công ty số 1 tại Việt Nam trong lĩnh vực phân phối, bán lẻ ô tô và phụ kiện.</p>
            <P>SỨ MỆNH:</P>
            <p>Với kim chỉ nam là “Không ngừng phát triển vì khách hàng” và làm hài lòng khách hàng bằng cách tạo ra những
              giá trị gia tăng như cung cấp các sản phẩm, dịch vụ tốt nhất.</p>
            <p>MỤC TIÊU CHIẾN LƯỢC:</p>
            <p>1. Tối đa hoá giá trị đầu tư của các cổ đông; giữ vững tốc độ tăng trưởng lợi nhuận và tình hình tài chính
              lành mạnh;</p>
            <p>2. Không ngừng nâng cao động lực làm việc và năng lực cán bộ; Carcenter phải luôn dẫn đầu ngành trong việc
              sáng tạo, phát triển chính sách đãi ngộ và cơ hội thăng tiến nghề nghiệp cho cán bộ của mình;</p>
            <p>3. Duy trì sự hài lòng, trung thành và gắn bó của khách hàng với Carcenter; xây dựng Carcenter thành một
              trong những công ty hàng đầu Việt Nam có chất lượng dịch vụ tốt nhất do khách hàng lựa chọn;</p>
            <p>4. Phát triển Carcenter thành một trong những công ty hàng đầu Việt Nam về: quản lý tốt nhất, môi trường làm
              việc tốt nhất, văn hoá doanh nghiệp chú trọng khách hàng, thúc đẩy hợp tác và sáng tạo, linh hoạt nhất khi môi
              trường kinh doanh thay đổi.</p>
            <p><b>II. THẾ MẠNH VÀ ĐỊNH HƯỚNG CỦA CÔNG TY</b></p>
            <p>Với kim chỉ nam là “Không ngừng phát triển vì khách hàng”, Carcenter đã quy tụ được Ban Lãnh đạo có bề dày
              kinh nghiệm trong lĩnh vực, không chỉ mạnh về kinh doanh mà còn mạnh về công nghệ có nhiều tiềm năng phát
              triển, kết hợp với đội ngũ nhân viên trẻ, năng động và chuyên nghiệp tạo lên thế mạnh nòng cốt của công ty để
              thực hiện tốt các mục tiêu đề ra.</p>
            <p>Hơn nữa, trên cơ sở nguồn lực của công ty và nhu cầu của xã hội, Carcenter lựa chọn phát triển kinh doanh các
              mặt hàng mỹ phẩm phục vụ nhu cầu thiết yếu của người dân với các sản phẩm đa dạng phong phú mang lại giá trị
              gia tăng cho người tiêu dùng thông qua các dịch vụ sau bán hàng.</p>
            <p>Qua quá trình phát triển, bên cạnh việc thiết lập được một hệ thống đối tác trong nước và ngoài nước đến từ
              các doanh nghiệp lớn của Hàn Quốc, Pháp, Mỹ, Nhật Bản, có thế mạnh trong lĩnh vực ô tô như: BMW, Toyota,
              Honda... Trong thời gian tới Công ty sẽ đầu tư vào các ngành nghề mới như bất động sản, khai thác khoáng, đầu
              tư tài chính.
            </p>
            <p><b>III. ĐỘI NGŨ NHÂN SỰ</b></p>
            <p>Hội đồng Quản trị do Đại hội đồng cổ đông tín nhiệm bầu ra. Hội đồng quản trị là cơ quan quản trị toàn bộ mọi
              hoạt động của công ty, các chiến lược, kế hoạch sản xuất và kinh doanh trong nhiệm kỳ của mình.</p>
            <p>Ban Giám đốc sẽ chịu trách nhiệm về các mặt hoạt động của công ty trước Hội đồng Quản trị và pháp luật hiện
              hành, quyết định các chủ trương, chính sách, mục tiêu chiến lược của công ty, đồng thời giám sát và kiểm tra
              tất cả các hoạt động về sản xuất kinh doanh, đầu tư của công ty.</p>
          </div>
        </div>
      </main>

  
  <footer class="container-fluid bg-dark mt-4">

    <div class="row  text-center p-3">

      <div class="col-md-3">
        <strong>
          <p class=" fs-5" style="color: rgb(15, 178, 248);">
            Showroom
          </p>
        </strong>
        <p style="color: white;">Tầng 6 - Tòa nhà Ladeco - 266 Đội Cấn, Hà Nội</p>
      </div>
      <div class="col-md-3">
        <strong>
          <p class=" fs-5" style="color: rgb(15, 178, 248);">
            Giờ mở cửa
          </p>
        </strong>
        <p style="color: white;">Thứ 2 - Thứ 6: 8:00 - 21:00 <br>
          Thứ 7 - Chủ nhật: 8:30 - 22:30</p>
      </div>
      <div class="col-md-3">
        <strong>
          <p class=" fs-5" style="color: rgb(15, 178, 248);">
            Hỗ trợ tư vấn
          </p>
        </strong>
        <p style="color: white;">1900 6750
        </p>
      </div>
      <div class="col-md-3">
        <strong>
          <p class=" fs-5" style="color: rgb(15, 178, 248);">
            Email
          </p>
        </strong>
        <p style="color: white;">syscars@gmail.com
        </p>

      </div>
    </div>

    <div class="row pb-3">
      <div class="col-md-10">
        <p class="text-light"> © Bản quyền thuộc về SYSCAR Team | Cung cấp bởi SYSTEM ERORR</p>
      </div>
      <div class="col-md-2 ">
        <button type="button" class="btn btn-secondary">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter"
            viewBox="0 0 16 16">
            <path
              d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z">
            </path>
          </svg>
        </button>

        <button type="button" class="btn btn-secondary">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook"
            viewBox="0 0 16 16">
            <path
              d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z">
            </path>
          </svg>
        </button>

        <button type="button" class="btn btn-secondary">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google"
            viewBox="0 0 16 16">
            <path
              d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z">
            </path>
          </svg>
        </button>
        <button type="button" class="btn btn-secondary">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram"
            viewBox="0 0 16 16">
            <path
              d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z">
            </path>
          </svg>
        </button>
      </div>
    </div>



  </footer>

  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>
</body>

</html>