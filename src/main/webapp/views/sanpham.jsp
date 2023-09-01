<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Trang</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<script
	src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.9"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<link rel="stylesheet" href="index.css">
</head>
<style>
body {
	background: white;
	color: black;
	font-family: 'Source Sans Pro', sans-serif;
	text-rendering: optimizeLegibility;
}

.container {
	margin-top: 50px;
}

.sort-filter {
	display: flex;
	margin-bottom: 20px;
}

.sort-filter .sort-product {
	margin-right: 10px;
}

a.btn {
	border-radius: 4px;
	box-shadow: 0 2px 0px 0 rgba(0, 0, 0, 0.25);
	display: inline-block;
	padding: 6px 30px 8px;
	position: relative;
	text-decoration: none;
}

.card-img-overplay {
	color: red;
}

.card-image {
	width: 300px;
	height: 160px;
}

div.cards {
	margin: 30px auto;
	max-width: 960px;
	text-align: center;
}

div.card {
	border: none;
	display: inline-block;
	margin: 8px;
	max-width: 300px;
	perspective: 1000;
	position: relative;
	text-align: left;
	width: 300px;
}

span {
	display: block;
	height: 2px;
	position: absolute;
	top: 16px;
	width: 12px;
}

h2 {
	font-size: 20px;
	font-weight: 700;
	letter-spacing: -0.05em;
	margin: 0;
	padding: 0;
}

.hover1 {
	color: black;
	text-decoration: none;
}

.hover1:hover {
	color: red;
}
</style>

<body>
	<main>
		<div class="container-fluid">

			<%@include file="header.jsp"%>

		</div>

		<!-- Content page -->

		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3">
					<div class="leftbar">
						<div class="filter-price">
							<h4>Hãng xe:</h4>
							<div>
								<button type="button" class="btn btn-outline-light text-dark">
									<img src="img/toyota.png" style="width: 200px; height: 70px;">
								</button>
								<button type="button" class="btn btn-outline-light text-dark">
									<img src="img/ford.png" style="width: 200px; height: 70px;">
								</button>
								<button type="button" class="btn btn-outline-light text-dark">
									<img src="img/mitsubishi.jpg"
										style="width: 200px; height: 100px;">
								</button>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-8 col-lg-9">
					<H1>Tất cả sản phẩm</H1>
					<hr>
					<!--  -->
					<div class="flex-sb-m flex-w p-b-35">
						<div class="sort-filter">
							<div class="sort-product">
								<select class="selection-2" name="sorting">
									<option>Mặc định</option>
									<option>Phổ biến</option>
									<option>A ---> Z</option>
									<option>Z ---> A</option>
									<option>Giá: thấp đến cao</option>
									<option>Giá: cao đến thấp</option>
								</select>
							</div>

							<div class="dropdown">
								<button class="btn btn-secondary dropdown-toggle" type="button"
									data-bs-toggle="dropdown" aria-expanded="false">Sắp
									xếp</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item"
										href="/products?sort=productName_asc">A --> Z</a></li>
									<li><a class="dropdown-item"
										href="/products?sort=productName_desc">Z --> A</a></li>
									<li><a class="dropdown-item" href="/products?sort=asc">Giá:
											thấp đến cao</a></li>
									<li><a class="dropdown-item" href="/products?sort=desc">Giá:
											cao đến thấp</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="cards">
						<c:forEach items="${products}" var="product">
							<div class="card">
								<div class="card-image-holder">
									<img class="card-image" src="${product.image}" alt="Card image" />
									<div class="card-img-overplay">${product.price}đ</div>
								</div>
								<div class="card-title">
									<h2>${product.productName}</h2>
									<hr>
									<div class="btn-group">
										<a class="btn btn-details" href="/detail?id=${product.productId}"><svg
												xmlns="http://www.w3.org/2000/svg" width="20" height="24"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round"
												class="feather feather-shopping-cart">
						<circle cx="9" cy="21" r="1"></circle>
						<circle cx="20" cy="21" r="1"></circle>
						<path
													d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
					</svg> Details</a> <a class="btn btn-success" href="#"><svg
												xmlns="http://www.w3.org/2000/svg" width="20" height="24"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-eye">
						<path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
						<circle cx="12" cy="12" r="3"></circle>
					</svg> Mua hàng</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

				</div>
			</div>


		</div>

		<footer class="container-fluid bg-dark mt-4">

			<div class="row  text-center p-3">

				<div class="col-md-3">
					<strong>
						<p class=" fs-5" style="color: rgb(15, 178, 248);">Showroom</p>
					</strong>
					<p style="color: white;">Tầng 6 - Tòa nhà Ladeco - 266 Đội Cấn,
						Hà Nội</p>
				</div>
				<div class="col-md-3">
					<strong>
						<p class=" fs-5" style="color: rgb(15, 178, 248);">Giờ mở cửa
						</p>
					</strong>
					<p style="color: white;">
						Thứ 2 - Thứ 6: 8:00 - 21:00 <br> Thứ 7 - Chủ nhật: 8:30 -
						22:30
					</p>
				</div>
				<div class="col-md-3">
					<strong>
						<p class=" fs-5" style="color: rgb(15, 178, 248);">Hỗ trợ tư
							vấn</p>
					</strong>
					<p style="color: white;">1900 6750</p>
				</div>
				<div class="col-md-3">
					<strong>
						<p class=" fs-5" style="color: rgb(15, 178, 248);">Email</p>
					</strong>
					<p style="color: white;">syscars@gmail.com</p>

				</div>
			</div>

			<div class="row pb-3">
				<div class="col-md-10">
					<p class="text-light">© Bản quyền thuộc về Avent Team | Cung
						cấp bởi Sapo</p>
				</div>
				<div class="col-md-2 ">
					<button type="button" class="btn btn-secondary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                            <path
								d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z">
                            </path>
                        </svg>
					</button>

					<button type="button" class="btn btn-secondary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                            <path
								d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z">
                            </path>
                        </svg>
					</button>

					<button type="button" class="btn btn-secondary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                            <path
								d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z">
                            </path>
                        </svg>
					</button>
					<button type="button" class="btn btn-secondary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                            <path
								d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z">
                            </path>
                        </svg>
					</button>
				</div>
			</div>



		</footer>



	</main>
</body>

</html>