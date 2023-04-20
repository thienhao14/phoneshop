<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Order</title>
<jsp:include page="common.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<section class="section-pagetop bg-light">
		<div class="container">
			<h2 class="title-page">Đơn hàng</h2>
		</div>
		<!-- container.// -->
	</section>
	<!-- section-pagetop.// -->

	<section class="section-content padding-y">
		<div class="container">
			<div class="row">

				<aside class="col-md-3 mb-md-0 mb-3">
					<nav class="list-group">
						<a class="list-group-item" href="#"> Tài khoản </a> <a
							class="list-group-item active" href="#"> Đơn hàng của tôi </a> <a
							class="list-group-item" href="#"> Sản phẩm yêu thích </a> <a
							class="list-group-item" href="#"> Đổi mật khẩu </a> <a
							class="list-group-item" href="#"> Thiết đặt </a> <a
							class="list-group-item" href="#"> Đăng xuất </a>
					</nav>
				</aside>
				<!-- col.// -->

				<main class="col-md-9">

					<div class="table-responsive-xxl">
						<table
							class="table table-bordered table-striped table-hover align-middle">
							<thead>
								<tr>
									<th scope="col" style="min-width: 125px;">Mã đơn hàng</th>
									<th scope="col" style="min-width: 100px;">Ngày mua</th>
									<th scope="col" style="min-width: 300px;">Sản phẩm</th>
									<th scope="col" style="min-width: 100px;">Tổng tiền</th>
									<th scope="col" style="min-width: 175px;">Trạng thái đơn
										hàng</th>
									<th scope="col">Thao tác</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">3</th>
									<td>15/12/2021</td>
									<td>Tiếng Việt lớp 1</td>
									<td>10.000₫</td>
									<td><span class="badge bg-warning text-dark">Đang
											giao hàng</span></td>
									<td class="text-center text-nowrap"><a
										class="btn btn-primary me-2" href="#" role="button">Xem
											đơn hàng</a></td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>10/12/2021</td>
									<td>Tiếng Việt lớp 2 ...và 1 sản phẩm khác</td>
									<td>60.000₫</td>
									<td><span class="badge bg-danger">Hủy đơn hàng</span></td>
									<td class="text-center text-nowrap"><a
										class="btn btn-primary me-2" href="#" role="button">Xem
											đơn hàng</a></td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>10/12/2021</td>
									<td>Tiếng Việt lớp 2 ...và 1 sản phẩm khác</td>
									<td>60.000₫</td>
									<td><span class="badge bg-success">Giao hàng thành
											công</span></td>
									<td class="text-center text-nowrap"><a
										class="btn btn-primary me-2" href="#" role="button">Xem
											đơn hàng</a></td>
								</tr>
							</tbody>
						</table>
					</div>

					<nav class="mt-4">
						<ul class="pagination">
							<li class="page-item disabled"><a class="page-link" href="#">Trang
									trước</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Trang
									sau</a></li>
						</ul>
					</nav>

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