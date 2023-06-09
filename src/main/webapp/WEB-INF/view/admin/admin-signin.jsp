<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Admin Signin</title>
<jsp:include page="common.jsp"></jsp:include>

<body>

	<header class="section-header">
		<section class="header-main border-bottom">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-11 py-3">
						<a class="text-body" href="/admin">
							<h3>PhoneShop : Admin</h3>
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

	<section class="section-content" style="margin: 100px 0;">
		<div class="card mx-auto" style="max-width: 380px">
			<div class="card-body">
				<h4 class="card-title mb-4">Đăng nhập Admin</h4>
				<form>
					<div class="mb-3">
						<input name="username" class="form-control"
							placeholder="Tên đăng nhập" type="text" autocomplete="off">
					</div>
					<div class="mb-3">
						<input name="password" class="form-control" placeholder="Mật khẩu"
							type="password" autocomplete="off">
					</div>
					<button type="submit" class="btn btn-primary w-100">Đăng
						nhập</button>
				</form>
			</div>
			<!-- card-body.// -->
		</div>
		<!-- card .// -->
	</section>
	<!-- section-content.// -->

	<footer class="section-footer">
		<section class="footer-bottom text-center bg-light border-top py-3">
			<div class="container-fluid">© 2021 — Shop Bán Sách</div>
			<!-- container-fluid.// -->
		</section>
		<!-- footer-bottom.// -->
	</footer>
	<!-- section-footer.// -->

</body>

</html>