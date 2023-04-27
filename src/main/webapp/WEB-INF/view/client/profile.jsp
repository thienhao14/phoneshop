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
	<jsp:include page="navbar.jsp"></jsp:include>

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
								<p class="bi bi-phone d-block lh-lg">
									Số điện thoại: 0123456789
								</p>
								<p class="bi bi-map d-block lh-lg">
									Địa chỉ: <br> Đường 16, Linh Trung, Thủ Đức, HCM
								</p>
							</div>

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