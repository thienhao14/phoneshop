<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="vi">
<title>Admin Order Management</title>
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
				<h3 class="section-title">Quản lý đơn hàng</h3>
			</header>
			<!-- section-heading.// -->
			<main class="table-responsive-xl mb-5">
				<table
					class="table table-bordered table-striped table-hover align-middle">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">ID</th>

							<th scope="col">Mã đơn</th>
							<th scope="col">Số điện thoại</th>
							<th scope="col">Địa chỉ</th>

							<th scope="col">Số lượng</th>
							<th scope="col">Tổng tiền</th>

							<td scope="col">Thao tác</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${invoices}" var="order" varStatus="status">
							<tr>
								<th scope="row">${status.count}</th>
								<td>${order.id}</td>

								<td>${order.name}</td>
								<td>${order.phoneNumber}</td>
								<td>${order.address}</td>

								<td>${order.quantity}</td>
								<td><fmt:formatNumber pattern="#,##0"
										value="${order.amount}" /></td>

								<td class="text-center text-nowrap"><a
									class="btn btn-primary me-2" href="#" role="button">Xem</a></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</main>
			<!-- book-manager-table.// -->
			<nav class="mt-3 mb-5">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#">Trang
							trước</a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Trang
							sau</a></li>
				</ul>
			</nav>
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