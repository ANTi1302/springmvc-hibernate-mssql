<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
 <title>Ellent Shop</title>

<!-- Core Style CSS -->
<link rel="stylesheet"
	href="<c:url value="/assets/css/font-awesome.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/css/core-style.css" /> ">
<link rel="stylesheet"
	href="<c:url value="/assets/css/position.css" />">

</head>

<body>
	<!-- Search Wrapper Area Start -->
	<%@ include file="header.jsp"%>
	<!-- Header Area End -->
<c:forEach var="dsProductChiTiet" items="${dsProductChiTiet}">
	<!-- Product Details Area Start -->
	<div class="single-product-area section-padding-100 clearfix">
		<div class="container-fluid">

			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb mt-50">
							<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/home">Home</a></li>
							<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/shop">Shop</a></li>
							<li class="breadcrumb-item">
							<a href="branch?txtC=${dsProductChiTiet.branchs.branchId}">${dsProductChiTiet.title}</a></li>
							<li class="breadcrumb-item active" aria-current="page">${dsProductChiTiet.name}</li>
						</ol>
					</nav>
				</div>
			</div>

			<div class="row">
				<div class="col-12 col-lg-7">
					<div class="single_product_thumb">
						<div id="product_details_slider" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li class="active" data-target="#product_details_slider"
									data-slide-to="0"
									style="background-image: url(<c:url value="${dsProductChiTiet.colors[0][0]}" />);">
								</li>
								<c:if test="${dsProductChiTiet.colors[1][0] !=null} ">
								<li class="active" data-target="#product_details_slider"
									data-slide-to="0"
									style="background-image: url(<c:url value="${dsProductChiTiet.colors[1][0]}" />);">
								</li>
								<li class="active" data-target="#product_details_slider"
									data-slide-to="0"
									style="background-image: url(<c:url value="${dsProductChiTiet.colors[2][0]}" />);">
								</li>
								</c:if>
								
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<a class="gallery_img"
										href="<c:url value="${dsProductChiTiet.colors[0][0]}" />">
										<img class="d-block w-100"
										src="<c:url value="${dsProductChiTiet.colors[0][0]}" />"
										alt="First slide">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-lg-5">
					<div class="single_product_desc">
						<!-- Product Meta Data -->

						<div class="product-meta-data">
							<div class="line"></div>
							<p class="product-price">$${dsProductChiTiet.sale}</p>
							<a href="<c:url value="" />">
								<h6>${dsProductChiTiet.name}</h6>
							</a>
							<!-- Ratings & Review -->
							<div
								class="ratings-review mb-15 d-flex align-items-center justify-content-between">
								<div class="ratings">
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i>
								</div>
								<div class="review">
									<a href="#">Write A Review</a>
								</div>
							</div>
							<!-- Avaiable -->
							<c:if test="${dsProductChiTiet.quatity>0}">
							<p class="avaibility">
								<i class="fa fa-circle"></i> In Stock
							</p>
							</c:if>
							<c:if test="${dsProductChiTiet.quatity<=0}">
							<p class="avaibility">
								<i class="fa fa-circle"></i> Out Of Stock
							</p>
							</c:if>
							
						</div>

						<div class="short_overview my-5">
							<p>${dsProductChiTiet.details}</p>
						</div>

						<!-- Add to Cart Form -->
						<form class="cart clearfix" method="get" action="cart">
							<div class="cart-btn d-flex mb-50">
								<p>Qty</p>
								<div class="quantity">
									<span class="qty-minus"
										onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( ${dsProductChiTiet.quatity} ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
										class="fa fa-caret-down" aria-hidden="true"></i></span> <input
										type="number" class="qty-text" id="qty" step="1" min="1"
										max="${dsProductChiTiet.quatity}" name="quantity" value="1">
									<span class="qty-plus"
										onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
										class="fa fa-caret-up" aria-hidden="true"></i></span>
								</div>
							</div>
							<c:if test="${dsProductChiTiet.quatity<=0}">
							<button type="submit" name="id" value="${dsProductChiTiet.productId}"
								class="btn amado-btn" disabled="disabled">Add to cart</button>
							</c:if>
							<c:if test="${dsProductChiTiet.quatity>0}">
							<button type="submit" name="id" value="${dsProductChiTiet.productId}"
								class="btn amado-btn">Add to cart</button>
							</c:if>
							
						</form>
					</div>
				</div>
			</div>
			<div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="1000" data-numposts="5"></div>
		</div>
	</div>
	</c:forEach>
	<!-- Product Details Area End -->
	</div>

	<!-- ##### Main Content Wrapper End ##### -->
	<!-- ##### Newsletter Area Start ##### -->
	<%@ include file="footer.jsp"%>
	<!-- ##### Footer Area End ##### -->

	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="<c:url value="/assets/js/jquery/jquery-2.2.4.min.js" />"></script>
	<!-- Popper js -->
	<script src="<c:url value="/assets/js/popper.min.js" />"></script>
	<!-- Bootstrap js -->
	<script src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
	<!-- Plugins js -->
	<script src="<c:url value="/assets/js/plugins.js" />"></script>
	<!-- Active js -->
	<script src="<c:url value="/assets/js/active.js" />"></script>
	<script src="<c:url value="/assets/js/script.js" />"></script>
	<script src="<c:url value="/assets/js/suggestions.js" />"></script>
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v12.0&appId=395679735650428&autoLogAppEvents=1"
		nonce="a4KvuqER"></script>
</body>

</html>