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
				<a class="navbar-brand" href="#page-top">Hello! I am Seong-Ho!</a>
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
						src="<c:url value='/resources/img/profile_seongho.jpg' />" alt="">
					<div class="intro-text">
						<span class="name">Roh SeongHo</span> <span class="skills">System
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
			<br>
				<div class="col-lg-offset-2">
					<p>안녕하세요. 저는 노성호라고 합니다.
					   저는 백엔드 개발자로 커리어를 시작하고 싶습니다.
					   
					
					
					</p>
				</div>
				<div class="col-lg-12 text-center">
						<ul style="display: inline-block">
							Language
							<li>Javascript</li>
							<li>Java</li>
							<li>Python</li>
							<li>Scala</li>
							
						</ul>
						<ul style="display: inline-block">
							System
							<li>Oracle database</li>
							<li>Apache Hadoop</li>
							<li>AWS</li>
							<li>TCP/IP</li>
						</ul>
						<ul style="display: inline-block">
							Big data Analysis
							<li>Linear Regression</li>
							<li>Deep Learning</li>
							<li>SVM</li>
							<li>etc.</li>
						</ul>
			</div>
			<div class="col-lg-8 col-lg-offset-2 text-center">
				<a href="https://kr.linkedin.com/in/seongho-roh-700100127"
					class="btn btn-lg btn-outline"> <i class="fa fa-download"></i>
					Linkedin
				</a> <a href="http://edu.sw.or.kr" class="btn btn-lg btn-outline"> <i
					class="fa fa-download"></i> 소프트웨어 산업협회
				</a> <a href="https://github.com/nsho77"
					class="btn btn-lg btn-outline"> <i class="fa fa-download"></i>
					Github
				</a>
			</div>
		</div>
		</div>
	</section>


	<!-- About Section -->
	<section id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2>Portfolio</h2><br><br>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-offset-2">
				<br>
					<ul>
						<li style="list-type-sytle: none;"><a
							style="list-type-sytle: none;">Money Ball - EPL 경기 데이터를 활용한 
							축구 경기 결과 예측</a></li>
						<li style="list-type-sytle: none;"><a
							style="list-type-sytle: none;">Oats Company - 기후 데이터와 주산지
								데이터를 통한 적합 농작물 제시</a></li>
					</ul>
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
	</section>




	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
</body>

</html>
