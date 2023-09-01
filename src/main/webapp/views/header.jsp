<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <header >

    <div class="row p-3 bg-secondary">

      <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">

          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="text-center ms-5">
            <a class="navbar-brand" href="#"><img style="width: 50%;" src="S" alt="logo"></a>

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
    
      </header>
</body>
</html>