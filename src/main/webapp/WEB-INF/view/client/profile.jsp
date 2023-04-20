<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Tài khoản</title>
<jsp:include page="common.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<body>
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
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							<strong><i class="bi bi-list"></i> Danh mục sản phẩm</strong>
					</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Sách giáo khoa</a></li>
							<li><a class="dropdown-item" href="#">Sách khoa học</a></li>
							<li><a class="dropdown-item" href="#">Truyện tranh</a></li>
							<li><a class="dropdown-item" href="#">Tiểu thuyết</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Tất cả danh mục</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#">Sản phẩm
							mới</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Sản phẩm
							bán chạy</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Khuyến
							mãi</a></li>
				</ul>
				<a class="btn btn-light me-2" href="#" role="button">Đăng ký</a> <a
					class="btn btn-primary" href="#" role="button">Đăng nhập</a>
			</div>
		</div>
		<!-- container.// -->
	</nav>
	<!-- navbar-main.// -->

	<section class="section-pagetop bg-light">
		<div class="container">
			<h2 class="title-page">Tài khoản</h2>
		</div>
		<!-- container.// -->
	</section>
	<!-- section-pagetop.// -->

	<section class="section-content padding-y">
		<div class="container">
			<div class="row">

				<aside class="col-md-3 mb-md-0 mb-3">
					<nav class="list-group">
						<a class="list-group-item active" href="#"> Tài khoản </a> <a
							class="list-group-item" href="#"> Đơn hàng của tôi </a> <a
							class="list-group-item" href="#"> Sản phẩm yêu thích </a> <a
							class="list-group-item" href="#"> Đổi mật khẩu </a> <a
							class="list-group-item" href="#"> Thiết đặt </a> <a
							class="list-group-item" href="#"> Đăng xuất </a>
					</nav>
				</aside>
				<!-- col.// -->

				<main class="col-md-9">
					<article class="card">
						<div class="card-body">
							<div>
								<h5>Nguyễn Thị A</h5>
								<p>nguyenthia@gmail.com</p>
							</div>
							<hr>
							<div>
								<p class="bi bi-map d-block lh-lg">
									Địa chỉ: <br> Đường Nguyễn Duy Trinh, Phường Bình Trưng
									Đông, Quận 2, TP.HCM
								</p>
							</div>
							<article class="card-group">
								<figure class="card bg-light">
									<div class="p-3">
										<h4 class="title">2</h4>
										<span>Sản phẩm trong giỏ</span>
									</div>
								</figure>
								<figure class="card bg-light">
									<div class="p-3">
										<h4 class="title">5</h4>
										<span>Đơn hàng</span>
									</div>
								</figure>
								<figure class="card bg-light">
									<div class="p-3">
										<h4 class="title">5</h4>
										<span>Sản phẩm đang giao</span>
									</div>
								</figure>
								<figure class="card bg-light">
									<div class="p-3">
										<h4 class="title">10</h4>
										<span>Sản phẩm đã nhận</span>
									</div>
								</figure>
							</article>
							<!-- row .//  -->
						</div>
						<!-- card-body.// -->
					</article>
				</main>
				<!-- col.// -->

			</div>
			<!-- row.// -->
		</div>
		<!-- container.// -->
	</section>
	<!-- section-content.// -->
</body>
	<jsp:include page="footer.jsp"></jsp:include>
</html>