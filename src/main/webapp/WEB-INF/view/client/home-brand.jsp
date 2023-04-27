<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Home Category</title>
<jsp:include page="common.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<section class="section-content mb-2">
		<div class="container">
			<header class="section-heading py-4 d-flex justify-content-between">
				<h3 class="section-title">Danh mục sản phẩm</h3>
				<a class="btn btn-secondary" href="#" role="button"
					style="height: fit-content;">Xem tất cả</a>
			</header>
			<!-- section-heading.// -->


			<div class="row item-grid">
				<c:forEach items="${brands}" var="brand">
					<div class="col-lg-3 col-md-6">
						<div class="card mb-4">
							<div class="card-body">
								<a href="#" class="stretched-link">
									<div class="d-flex align-items-center">
										<img src="img/50px.png"> <span
											class="category-title ms-3">${brand.name}</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
			<!-- row.// -->
		</div>
		<!-- container.// -->
	</section>
	<!-- section-content.// -->




</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>