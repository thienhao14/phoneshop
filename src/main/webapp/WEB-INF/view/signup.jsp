<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<link rel="stylesheet" href="/login-signup/css/style.css">
<link rel="stylesheet"
	href="/login-signup/fonts/material-icon/css/material-design-iconic-font.min.css">
</head>
<body>
	<section class="signup">
		<div class="container">
			<div class="signup-content">
				<div class="signup-form">
					<h2 class="form-title">Sign up</h2>
					<form action="/user/input-signup" th:object="${signupModel}"
						method="post" class="register-form" id="register-form">
						<div class="form-group">
							<label for="name"><i
								class="zmdi zmdi-account material-icons-name"></i></label> <input
								type="text" name="username" id="name" placeholder="Your Name" />
						</div>
						<div class="form-group">
							<label for="email"><i class="zmdi zmdi-email"></i></label> <input
								type="email" name="email" id="email" placeholder="Your Email" />
						</div>
						<div class="form-group">
							<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
								type="password" name="password" id="pass" placeholder="Password" />
						</div>
						<div class="form-group">
							<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
							<input type="password" name="rePassword" id="re_pass"
								placeholder="Repeat your password" />
						</div>
						<div class="form-group">
							<input type="checkbox" name="agree-term" id="agree-term"
								class="agree-term" /> <label for="agree-term"
								class="label-agree-term"><span><span></span></span>I
								agree all statements in <a href="#" class="term-service">Terms
									of service</a></label>
						</div>
						<div class="form-group form-button">
							<input type="submit" name="signup" id="signup"
								class="form-submit" value="Register" />
						</div>
					</form>
				</div>
				<div class="signup-image">
					<figure>
						<img
							src="https://cdn.pixabay.com/photo/2018/11/13/22/01/instagram-3814082_640.png"
							alt="sing up image">
					</figure>
					<a href="/user/login" class="signup-image-link">I am already member</a>
				</div>
			</div>
		</div>
	</section>
</body>