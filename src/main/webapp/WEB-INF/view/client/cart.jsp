<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Giỏ hàng</title>
<jsp:include page="common.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<section class="section-pagetop bg-light">
		<div class="container">
			<h2 class="title-page">Giỏ hàng</h2>
		</div>
		<!-- container.// -->
	</section>
	<!-- section-pagetop.// -->

	<section class="section-content padding-y">
		<div class="container">
			<div class="row">

				<main class="col-lg-9 mb-lg-0 mb-3">
					<div class="card">

						<div class="table-responsive-xl">
							<table class="cart-table table table-borderless">
								<thead class="text-muted">
									<tr class="small text-uppercase">
										<th scope="col" style="min-width: 280px;">Sản phẩm</th>
										<th scope="col" width="150" style="min-width: 150px;">Giá</th>
										<th scope="col" width="150" style="min-width: 150px;">Số
											lượng</th>
										<th scope="col" width="100" style="min-width: 100px;"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<figure class="itemside">
												<div class="float-start me-3">
													<img src="img/80px.png">
												</div>
												<figcaption class="info">
													<a href="#" class="title">Tiếng Việt lớp 1</a>
												</figcaption>
											</figure>
										</td>
										<td>
											<div class="price-wrap">
												<span class="price">20.000₫</span>
											</div>
										</td>
										<td><input type="number" value="1" min="1"
											class="form-control"></td>
										<td class="text-center text-nowrap"><a href="#"
											class="btn btn-success">Cập nhật</a> <a href="#"
											class="btn btn-danger ms-1">Xóa</a></td>
									</tr>
									<tr>
										<td>
											<figure class="itemside">
												<div class="float-start me-3">
													<img src="img/80px.png">
												</div>
												<figcaption class="info">
													<a href="#" class="title">Tiếng Việt lớp 2</a>
												</figcaption>
											</figure>
										</td>
										<td>
											<div class="price-wrap">
												<span class="price">30.000₫</span>
											</div>
										</td>
										<td><input type="number" value="1" min="1"
											class="form-control"></td>
										<td class="text-center text-nowrap"><a href="#"
											class="btn btn-success">Cập nhật</a> <a href="#"
											class="btn btn-danger ms-1">Xóa</a></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- table.responsive-md.// -->

						<div class="card-body border-top">
							<a href="#" class="btn btn-primary float-end">Đặt hàng</a> <a
								href="#" class="btn btn-light">Tiếp tục mua sắm</a>
						</div>
						<!-- card-body.// -->

					</div>
					<!-- card.// -->
				</main>
				<!-- col.// -->

				<aside class="col-lg-3">

					<div class="card mb-3">
						<div class="card-body">
							<p class="card-title">Hình thức giao hàng</p>
							<form action="">
								<div class="form-check mb-2">
									<input class="form-check-input" type="radio"
										name="delivery_method" id="delivery_method_1" checked>
									<label class="form-check-label" for="delivery_method_1">Giao
										tiêu chuẩn</label>
								</div>
								<div class="form-check mb-2">
									<input class="form-check-input" type="radio"
										name="delivery_method" id="delivery_method_2"> <label
										class="form-check-label" for="delivery_method_2">Giao
										nhanh</label>
								</div>
							</form>
						</div>
						<!-- card-body.// -->
					</div>
					<!-- card.// -->

					<div class="card mb-3">
						<div class="card-body">
							<p class="card-title">Mã giảm giá</p>
							<form action="">
								<div class="input-group mb-3">
									<input type="text" class="form-control" placeholder="">
									<button class="btn btn-primary" type="button">Áp dụng</button>
								</div>
							</form>
						</div>
						<!-- card-body.// -->
					</div>
					<!-- card.// -->

					<div class="card">
						<div class="card-body">
							<dl class="row mb-0">
								<dt class="col-xxl-6 col-lg-12 col-6">Tạm tính:</dt>
								<dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3">50.000₫</dd>
								<dt class="col-xxl-6 col-lg-12 col-6">Phí vận chuyển:</dt>
								<dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3">10.000₫</dd>
								<dt class="col-xxl-6 col-lg-12 col-6">Tổng cộng:</dt>
								<dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3">
									<strong>60.000₫</strong>
								</dd>
							</dl>
						</div>
						<!-- card-body.// -->
					</div>
					<!-- card.// -->

				</aside>
				<!-- col.// -->

			</div>
			<!-- row.// -->
		</div>
		<!-- container -->
	</section>
	<!-- section-content.// -->
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>