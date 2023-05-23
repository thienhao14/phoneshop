<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="vi">
<title>Giỏ hàng</title>
<jsp:include page="common.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<section class="section-pagetop bg-light">
		<div class="container">
			<h2 class="title-page">Giỏ hàng</h2>
		</div>
		<!-- container.// -->
	</section>
	<!-- section-pagetop.// -->

	<section class="section-content padding-y">
		<div class="container">
			<div style="color: red; text-align: center">${message}</div>
			<div class="row">
				<form action="/order" th:object="${invoiceObj}" method="post">
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
										<c:set var="total" value="0"></c:set>
										<c:forEach items="${cart}" var="item">
											<c:set var="total"
												value="${total + item.product.price * item.quantity }"></c:set>
											<tr>
												<td>
													<figure class="itemside">
														<div class="float-start me-3">
															<img width="80px" src="${item.product.imgList}">
														</div>
														<figcaption class="info">
															<a href="/user/product/product-detail/${item.product.id}"
																class="title">${item.product.name}</a>
														</figcaption>
														<input name="name" type="hidden"
															value="${item.product.name}">
													</figure>
												</td>
												<td>

													<div class="price-wrap">
														<span class="price"><fmt:formatNumber
																pattern="#,##0" value="${item.product.price}" /></span>
														<input name="amount" type="hidden"
															value="${item.product.price}">
													</div>
												</td>
												<td><input name="quantity" type="number"
													value="${item.quantity}" min="1" class="form-control"></td>
												<td class="text-center text-nowrap"><a href="#"
													class="btn btn-success">Cập nhật</a> <a
													href="/remove/${item.product.id}"
													class="btn btn-danger ms-1">Xóa</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- table.responsive-md.// -->


							<!-- card-body.// -->

						</div>
						<!-- card.// -->
					</main>
					<div class="">
						<div class="card-body">
							<dl class="row mb-0">

								<dd>
									Tổng cộng: <strong><fmt:formatNumber pattern="#,##0"
											value="${total}" /></strong>
								</dd>
							</dl>
						</div>
						<!-- card-body.// -->
					</div>
					<main class="col-lg-9 mb-lg-0 mb-3">
						<div class="card">

							<div class="table-responsive-xl">
								Số điện thoại(*)<input required size="50" type="text"
									class="form-control" placeholder="Nhập số điện thoại"
									name="phoneNumber"> <br> Địa chỉ nhận hàng(*)<input
									required size="50" type="text" class="form-control"
									placeholder="Nhập địa chỉ nhận hàng" name="address">
							</div>
							<!-- table.responsive-md.// -->


							<!-- card-body.// -->

						</div>
						<!-- card.// -->
					</main>


					<div class="card-body border-top">
						<button type="submit" class="btn btn-primary">Đặt hàng</button>
						<a href="/user/products" class="btn btn-light">Tiếp tục mua
							sắm</a>
					</div>
				</form>
				<!-- col.// -->

				<aside class="col-lg-3">

					<%-- 					<div class="card mb-3">
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
					</div> --%>
					<!-- card.// -->



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