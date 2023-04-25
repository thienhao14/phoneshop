<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<title>Admin Add Product</title>
<jsp:include page="common.jsp"></jsp:include>

<body>

  <header class="section-header">
    <section class="header-main border-bottom">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-11 py-3">
            <a class="text-body" href="./home.html">
              <h3>PhoneShop : Admin</h3>
            </a>
          </div> <!-- col.// -->
          <div class="col-1">
            <ul class="nav col-12 col-lg-auto my-2 my-lg-0 justify-content-center justify-content-lg-end text-small">
              <li>
                <a href="#" class="nav-link text-body">
                  <i class="bi bi-window d-block text-center fs-3"></i>
                  Client
                </a>
              </li>
            </ul>
          </div> <!-- col.// -->
        </div> <!-- row.// -->
      </div> <!-- container.// -->
    </section> <!-- header-main.// -->
  </header> <!-- section-header.// -->

  <nav class="navbar navbar-main navbar-expand-lg navbar-light border-bottom">
    <div class="container">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="bi bi-people"></i> Quản lý người dùng</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="bi bi-tags"></i> Quản lý thể loại</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#"><i class="bi bi-book"></i> Quản lý sản phẩm</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="bi bi-cart"></i> Quản lý giỏ hàng</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="bi bi-inboxes"></i> Quản lý đơn hàng</a>
          </li>
        </ul>

      </div>
    </div> <!-- container.// -->
  </nav> <!-- navbar-main.// -->

  <section class="section-content">
    <div class="container">
      <header class="section-heading py-4 d-flex justify-content-between">
        <h3 class="section-title">Thêm sản phẩm</h3>
      </header> <!-- section-heading.// -->
      <main class="add-book-form mb-5">
        <form action="/admin/admin-add-product" th:object="${product}" method="post" class="w-50">
          <div class="mb-3">
            <label for="add-product-title" class="form-label">Tên sản phẩm</label>
            <input type="text" class="form-control" id="add-product-title" name="name">
          </div>
          <div class="mb-3">
            <label for="add-product-brand" class="form-label">Thương hiệu</label>
            <input type="text" class="form-control" id="add-product-brand" name="brand">
          </div>
          <div class="mb-3">
            <label for="add-product-price" class="form-label">Giá</label>
            <input type="number" class="form-control" id="add-product-price" name="price">
          </div>
          <div class="mb-3">
            <label for="add-product-discount" class="form-label">Khuyến mãi</label>
            <input type="text" class="form-control" id="add-product-discount" name="discount">
          </div>
          <div class="mb-3">
            <label for="add-product-description" class="form-label">Mô tả</label>
            <textarea class="form-control" id="add-product-description" rows="5" name="description"></textarea>
          </div>
          <div class="mb-3">
            <label for="add-product-quantity" class="form-label">Số lượng</label>
            <input type="text" class="form-control" id="add-product-quantity" name="quantity">
          </div>
          
          <div class="mb-3">
            <label for="add-product-image" class="form-label">Hình</label>
            <input type="file" class="form-control" id="add-product-image" name="image">
          </div>
          <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
          <button type="reset" class="btn btn-warning ms-2">Tẩy trống</button>
          <button type="button" class="btn btn-light ms-2">Hủy</button>
        </form>
      </main> <!-- add-book-form.// -->
    </div> <!-- container.// -->
  </section> <!-- section-content.// -->

  <footer class="section-footer">
    <section class="footer-bottom text-center bg-light border-top py-3">
      <div class="container-fluid">© 2023 — PhoneShop</div> <!-- container-fluid.// -->
    </section> <!-- footer-bottom.// -->
  </footer> <!-- section-footer.// -->

</body>

</html>