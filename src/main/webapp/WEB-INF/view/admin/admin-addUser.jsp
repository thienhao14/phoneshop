<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Admin Add User</title>
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

	<section class="section-content">
		<div class="container">
			<header class="section-heading py-4 d-flex justify-content-between">
				<h3 class="section-title">Thêm người dùng</h3>
			</header>
			<!-- section-heading.// -->
			<main class="add-book-form mb-5">
				<form action="/admin/admin-add-user" th:object="${user}"
					method="post" class="w-50">
					<div class="mb-3">
						<label for="add-user-name" class="form-label">User name</label> <input
							type="text" class="form-control" id="add-user-name"
							name="username">
					</div>
					<div class="mb-3">
						<label for="add-user-email" class="form-label">Email</label> <input
							type="text" class="form-control" id="add-user-email" name="email">
					</div>
					<div class="mb-3">
						<label for="add-user-password" class="form-label">Password</label>
						<input type="text" class="form-control" id="add-user-password"
							name="password">
					</div>
					<div class="mb-3">
						<label for="add-user-activeFlag" class="form-label">Trạng
							thái</label> <input type="text" class="form-control"
							id="add-user-activeFlag" name="activeFlag">
					</div>


					<button type="submit" class="btn btn-primary">Thêm người
						dùng</button>
					<button type="reset" class="btn btn-warning ms-2">Tẩy
						trống</button>
					<button type="button" class="btn btn-light ms-2">Hủy</button>
				</form>
			</main>
			<!-- add-book-form.// -->
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