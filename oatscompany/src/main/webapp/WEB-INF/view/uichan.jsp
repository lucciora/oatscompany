<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Oast Company Members - Uichan</title>

<!-- Bootstrap Core CSS -->

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/bootstrap.css' />">
<!-- Theme CSS -->

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/freelancer.min.css' />">



</head>

<body id="page-top" class="index">

	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-fixed-top navbar-custom">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<a class="navbar-brand" href="#page-top">Hello! I am Uichan!</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>
					<li class="page-scroll"><a href="#about">About</a></li>
					<li class="page-scroll"><a href="#portfolio">Portfolio</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<img class="img-responsive"
						src="<c:url value='/resources/img/profile_uichan.JPG' />" alt="">
					<div class="intro-text">
						<span class="name">Kang Uichan</span> <span class="skills">System
							developer, Back-end developer, Data scientist</span>
					</div>
				</div>
			</div>
		</div>
	</header>


	<!-- About Section -->
	<section class="success" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2>About</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-lg-offset-2">
					<p>안녕하세요. 저는 강의찬이라고 합니다. <br>
					오늘은 시작</p>
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
	</section>


	<!-- Portfolio Grid Section -->
	<section id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2>Portfolio</h2>
				</div>

			</div>
	</section>




	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
</body>

</html>
