<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Trang chủ Admin</title>
<jsp:include page="common.jsp"></jsp:include>

<body>

	<header class="section-header">
		<section class="header-main border-bottom">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-11 py-3">
						<a class="text-body" href="/admin">
							<h3>PhoneShop : Trang chủ Admin</h3>
						</a>
					</div>
					<!-- col.// -->
					<div class="col-1">
						<ul
							class="nav col-12 col-lg-auto my-2 my-lg-0 justify-content-center justify-content-lg-end text-small">
							<li><a href="user/login" class="nav-link text-body"> <i
									class="bi bi-window d-block text-center fs-3"></i> Client
							</a></li>
						</ul>
					</div>
					<!-- col.// -->
				</div>
				<!-- row.// -->
			</div>
			<!-- container.// -->
		</section>
		<!-- header-main.// -->
	</header>
	<!-- section-header.// -->

	<nav
		class="navbar navbar-main navbar-expand-lg navbar-light border-bottom">
		<div class="container">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="/admin/user"><i
							class="bi bi-people"></i> Quản lý người dùng</a></li>
					<li class="nav-item"><a class="nav-link" href="#"><i
							class="bi bi-tags"></i> Quản lý thương hiệu</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/product"><i
							class="bi bi-phone"></i> Quản lý sản phẩm</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/order"><i
							class="bi bi-inboxes"></i> Quản lý đơn hàng</a></li>
				</ul>
			</div>
		</div>
		<!-- container.// -->
	</nav>
	<!-- navbar-main.// -->

	<section class="section-content padding-y">
		<div class="container">
			<div class="card bg-light">
				<div class="card-body p-5">
					<h1 class="display-4 mb-5">Quản lý PhoneShop</h1>
					<div class="row">
						<div class="col-6 col-lg-3">
							<figure class="card bg-primary text-white">
								<div class="p-3">
									<h4 class="title">${numberOfUser}</h4>
									<span>người dùng</span>
								</div>
							</figure>
						</div>
						<div class="col-6 col-lg-3">
							<figure class="card">
								<div class="p-3">
									<h4 class="title">${numberOfBrand}</h4>
									<span>Thương hiệu</span>
								</div>
							</figure>
						</div>
						<div class="col-6 col-lg-3">
							<figure class="card">
								<div class="p-3">
									<h4 class="title">${numberOfProduct}</h4>
									<span>Sản phẩm</span>
								</div>
							</figure>
						</div>
						<div class="col-6 col-lg-3">
							<figure class="card">
								<div class="p-3">
									<h4 class="title">${numberOfOrder}</h4>
									<span>Đơn hàng</span>
								</div>
							</figure>
						</div>
					</div>
				</div>
			</div>
			<!-- card.// -->
		</div>
		<!-- container.// -->
	</section>
	<!-- section-content.// -->

	<footer class="section-footer">
		<section class="footer-bottom text-center bg-light border-top py-3">
			<div class="container-fluid">© 2023 — PhoneShop</div>
			<!-- container-fluid.// -->
		</section>
		<!-- footer-bottom.// -->
	</footer>
	<!-- section-footer.// -->

</body>

</html>