<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<header class="section-header">
	<section class="header-main border-bottom">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-3 py-3">
					<a class="text-body" href="/user/products">
						<h3>Phone Shop</h3>
					</a>
				</div>
				<!-- col.// -->
				<div class="col-lg-4 col-xl-5">
					<form action="/user/product/search" class="search" method="get">
						<div class="input-group w-100">
							<input type="text" class="form-control" name="productName"
								placeholder="Nhập từ khóa cần tìm ...">
							<button class="btn btn-primary" type="button">
								<i class="bi bi-search"></i>
							</button>
						</div>
					</form>
				</div>
				<!-- col.// -->
				<div class="col-lg-5 col-xl-4">
					<ul
						class="nav col-12 col-lg-auto my-2 my-lg-0 justify-content-center justify-content-lg-end text-small">
						<li><a href="/user/profile" class="nav-link text-body"> <i
								class="bi bi-person d-block text-center fs-3"></i> Tài khoản
						</a></li>
						<!-- <li>
                <a href="/order" class="nav-link text-body">
                  <i class="bi bi-list-check d-block text-center fs-3"></i>
                  Đơn hàng
                </a>
              </li> -->
						<li><a href="/cart" class="nav-link text-body"> <i
								class="bi bi-cart d-block text-center fs-3"></i> Giỏ hàng <c:if
									test="${cart != null}">
									<span style="color: red">(${cart.size()})</span>
								</c:if>
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