<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Trang chủ</title>
<jsp:include page="common.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>


<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<section class="section-pagetop-2 bg-light">
		<div class="container">
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item" aria-current="page"><a href="/user/home">Trang
							chủ</a></li>
					<li class="breadcrumb-item" aria-current="page"><a href="/user/home">Sản phẩm</a></li>
					<li class="breadcrumb-item active" aria-current="page">${product.name}</li>
				</ol>
			</nav>
		</div>
		<!-- container.// -->
	</section>
	<!-- section-pagetop-2.// -->

	<section class="section-content padding-y">
		<div class="container">
			<div class="row">

				<aside class="col-md-5 col-lg-6 mb-md-0 mb-4">
					<div id="productImageCarousel" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#productImageCarousel"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#productImageCarousel"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#productImageCarousel"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="img/570px-1.png" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="img/570px-2.png" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="img/570px-3.png" class="d-block w-100" alt="...">
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#productImageCarousel" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Trước</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#productImageCarousel" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Sau</span>
						</button>
					</div>
				</aside>

				<main class="col-md-7 col-lg-6">

					<h2 class="title">${product.name}</h2>

					<div class="rating-wrap my-3">
						<span class="rating-stars me-2"> <i
							class="bi bi-star-fill active"></i> <i
							class="bi bi-star-fill active"></i> <i
							class="bi bi-star-fill active"></i> <i
							class="bi bi-star-fill active"></i> <i class="bi bi-star-fill"></i>
						
					</div>

					<div class="mb-4">
						<span class="price h4">${product.price}</span> <span
							class="ms-2 text-muted text-decoration-line-through">20.000₫</span>
					</div>

					<dl class="row mb-4">
						<dt class="col-xl-4 col-sm-5 col-6">Thương hiệu</dt>
						<dd class="col-xl-8 col-sm-7 col-6">
							<a href="#">product.brand</a>
						</dd>


						<dt class="col-xl-4 col-sm-5 col-6">Tình trạng</dt>
						<dd class="col-xl-8 col-sm-7 col-6">còn hàng</dd>

						<dt class="col-xl-4 col-sm-5 col-6">Số lượng</dt>
						<dd class="col-xl-8 col-sm-7 col-6">
							<input type="number" class="form-control w-50" value="1" min="1"
								max="1000" step="1" />
						</dd>
					</dl>

					<div>
						<a href="#" class="btn btn-primary">Mua ngay</a> <a href="#"
							class="btn btn-light ms-2">Thêm vào giỏ hàng</a>
					</div>

				</main>

			</div>
		</div>
		<!-- container.// -->
	</section>
	<!-- section-content.// -->

	<section class="section-content mb-4">
		<div class="container">
			<div class="row">
				<div class="col">
					<h3 class="pb-2">Mô tả sản phẩm</h3>
					<p>
					${product.description}
					</p>
					
				</div>
			</div>
		</div>
		<!-- container.// -->
	</section>
	<!-- section-content.// -->

	<section class="section-content mb-5">
		<div class="container">
			
					<h3 class="pb-2">Thêm bình luận</h3>
					<div class="ratting-form-wrapper">
						<div class="ratting-form">
							<form action="">

								<div class="row mb-3">
									<div class="col">
										<textarea class="form-control" placeholder="Nội dung đánh giá"
											rows="3"></textarea>
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Gửi bình
									luận</button>
							</form>
						</div>
					</div>
				</div>
				<!-- col.// -->
			</div>
			<!-- row.// -->
		</div>
		<!-- container.//  -->
	</section>
	<!-- section-content.// -->

	<section class="section-content mb-5">
		<div class="container">
			<h3 class="pb-2">Sản phẩm liên quan</h3>
			<div class="row item-grid">
				<div class="col-lg-3 col-md-6">
					<div class="card p-3 mb-4">
						<a href="#" class="img-wrap text-center"> <img
							class="img-fluid" src="img/200px.png">
						</a>
						<figcaption class="info-wrap mt-2">
							<a href="#" class="title">Tên một sản phẩm</a>
							<div class="price mt-1 fw-bold">450.000₫</div>
						</figcaption>
					</div>
				</div>
				<!-- col.// -->
				<div class="col-lg-3 col-md-6">
					<div class="card p-3 mb-4">
						<a href="#" class="img-wrap text-center"> <img
							class="img-fluid" src="img/200px.png">
						</a>
						<figcaption class="info-wrap mt-2">
							<a href="#" class="title">Tên một sản phẩm</a>
							<div class="price mt-1 fw-bold">450.000₫</div>
						</figcaption>
					</div>
				</div>
				<!-- col.// -->
				<div class="col-lg-3 col-md-6">
					<div class="card p-3 mb-4">
						<a href="#" class="img-wrap text-center"> <img
							class="img-fluid" src="img/200px.png">
						</a>
						<figcaption class="info-wrap mt-2">
							<a href="#" class="title">Tên một sản phẩm</a>
							<div class="price mt-1 fw-bold">450.000₫</div>
						</figcaption>
					</div>
				</div>
				<!-- col.// -->
				<div class="col-lg-3 col-md-6">
					<div class="card p-3 mb-4">
						<a href="#" class="img-wrap text-center"> <img
							class="img-fluid" src="img/200px.png">
						</a>
						<figcaption class="info-wrap mt-2">
							<a href="#" class="title">Tên một sản phẩm</a>
							<div class="price mt-1 fw-bold">450.000₫</div>
						</figcaption>
					</div>
				</div>
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