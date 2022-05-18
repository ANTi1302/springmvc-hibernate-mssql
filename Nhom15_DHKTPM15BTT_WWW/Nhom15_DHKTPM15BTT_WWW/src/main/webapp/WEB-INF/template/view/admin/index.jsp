<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Spica Admin</title>
<!-- base:css -->
<link rel="stylesheet"
	href="<c:url value="/assets/assets-admin/vendors/mdi/css/materialdesignicons.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/assets-admin/vendors/css/vendor.bundle.base.css" />">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<c:url value="/assets/assets-admin/css/style.css" />">
<!-- endinject -->
<link rel="shortcut icon"
	href="<c:url value="/assets/assets-admin/images/favicon.png" />" />


</head>
<body>
	<div class="container-scroller d-flex">

		<%@ include file="header.jsp"%>

		<div class="main-panel">
			<!-- row end -->
			<div class="row">
				<div class="col-md-4 grid-margin stretch-card">
					<div class="card bg-facebook d-flex align-items-center">
						<div class="card-body py-5">
							<div
								class="d-flex flex-row align-items-center flex-wrap justify-content-md-center justify-content-xl-start py-1">
								<i class="mdi mdi-cash-usd text-white icon-lg"></i>
								<div class="ms-3 ml-md-0 ml-xl-3">
									<h5 class="text-white font-weight-bold">Sales Promotion</h5>
									<p class="mt-2 text-white card-text">${salesorder }</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 grid-margin stretch-card">
					<div class="card bg-google d-flex align-items-center">
						<div class="card-body py-5">
							<div
								class="d-flex flex-row align-items-center flex-wrap justify-content-md-center justify-content-xl-start py-1">
								<i class="mdi mdi-cart-outline text-white icon-lg"></i>
								<div class="ms-3 ml-md-0 ml-xl-3">
									<h5 class="text-white font-weight-bold">Order Number</h5>
									<p class="mt-2 text-white card-text">${countorder }</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 grid-margin stretch-card">
					<div class="card bg-twitter d-flex align-items-center">
						<div class="card-body py-5">
							<div
								class="d-flex flex-row align-items-center flex-wrap justify-content-md-center justify-content-xl-start py-1">
								<i class="mdi mdi-calculator text-white icon-lg"></i>
								<div class="ms-3 ml-md-0 ml-xl-3">
									<h5 class="text-white font-weight-bold">Products Inventory</h5>
									<p class="mt-2 text-white card-text">${count }</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- row end -->
			<div class="content-wrapper">
				<div class="row">
					<div class="col-12 col-xl-6 grid-margin stretch-card">
						<div class="row w-100 flex-grow">
							<div class="col-md-12 grid-margin stretch-card">
								<div class="card">
									<div class="card-body">
										<p class="card-title">Today Order</p>
										<p class="text-muted">25% more traffic than previous week</p>
										<div class="row mb-3">
											<div class="col-md-7">
												<div class="d-flex justify-content-between traffic-status">
													<div class="item">
														<p class="mb-">Users</p>
														<h5 class="font-weight-bold mb-0">93,956</h5>
														<div class="color-border"></div>
													</div>
													<div class="item">
														<p class="mb-">Bounce Rate</p>
														<h5 class="font-weight-bold mb-0">58,605</h5>
														<div class="color-border"></div>
													</div>
													<div class="item">
														<p class="mb-">Page Views</p>
														<h5 class="font-weight-bold mb-0">78,254</h5>
														<div class="color-border"></div>
													</div>
												</div>
											</div>
											<div class="col-md-5">
												<ul
													class="nav nav-pills nav-pills-custom justify-content-md-end"
													id="pills-tab-custom" role="tablist">
													<li class="nav-item"><a class="nav-link active"
														id="pills-home-tab-custom" data-toggle="pill"
														href="#pills-health" role="tab" aria-controls="pills-home"
														aria-selected="true"> Day </a></li>
													<li class="nav-item"><a class="nav-link"
														id="pills-profile-tab-custom" data-toggle="pill"
														href="#pills-career" role="tab"
														aria-controls="pills-profile" aria-selected="false">
															Week </a></li>
													<li class="nav-item"><a class="nav-link"
														id="pills-contact-tab-custom" data-toggle="pill"
														href="#pills-music" role="tab"
														aria-controls="pills-contact" aria-selected="false">
															Month </a></li>
												</ul>
											</div>
										</div>
										<canvas id="audience-chart"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-xl-6 grid-margin stretch-card">
						<div class="row w-100 flex-grow">
							<div class="col-md-6 grid-margin stretch-card">
								<div class="card">
									<div class="card-body">
										<p class="card-title">Today Product</p>
										<p class="text-muted">Last update: 2 Hours ago</p>
										<div
											class="regional-chart-legend d-flex align-items-center flex-wrap mb-1"
											id="regional-chart-legend"></div>
										<canvas height="280" id="regional-chart"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 grid-margin stretch-card">
								<div class="card">
									<div class="card-body pb-0">
										<div class="d-flex align-items-center mb-4">
											<p class="card-title mb-0 me-1">Today activity</p>
											<div class="badge badge-info badge-pill">2</div>
										</div>
										<div class="d-flex flex-wrap pt-2">
											<div class="me-4 mb-lg-2 mb-xl-0">
												<p>Time On Site</p>
												<h4 class="font-weight-bold mb-0">77.15 %</h4>
											</div>
											<div>
												<p>Page Views</p>
												<h4 class="font-weight-bold mb-0">14.15 %</h4>
											</div>
										</div>
									</div>
									<canvas height="150" id="activity-chart"></canvas>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">The last 40 orders</h4>
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Customer</th>
												<th>Date Ordered</th>
												<th>Date Updated</th>
												<th>Price</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${order }" var="o">
												<tr>
													<td>${o[1] }${o[2] }</td>
													<td>${o[3] }</td>
													<td>${o[4] }</td>

													<td class="text-danger">$ ${o[6]}</td>
													<td><label class="badge badge-danger">${o[5] }</label></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>


			<%@ include file="footer.jsp"%>

			<!-- base:js -->
			<script
				src="<c:url value="/assets/assets-admin/vendors/js/vendor.bundle.base2.js" />"></script>
			<!-- endinject -->
			<!-- Plugin js for this page-->
			<script
				src="<c:url value="/assets/assets-admin/vendors/chart/Chart.min.js" />"></script>
			<script
				src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />"
				type="text/javascript"></script>
			<!-- End plugin js for this page-->
			<!-- inject:js -->
			<script src="<c:url value="/assets/assets-admin/js/off-canvas.js" />"></script>
			<script
				src="<c:url value="/assets/assets-admin/js/hoverable-collapse.js" />"></script>
			<script src="<c:url value="/assets/assets-admin/js/template.js" />"></script>
			<script
				src="<c:url value="/assets/assets-admin/js/file-upload.js" />"></script>
			<!-- endinject -->
			<!-- plugin js for this page -->
			<script
				src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />"
				type="text/javascript"></script>
			<!-- End plugin js for this page -->
			<!-- Custom js for this page-->
			<jsp:include page="_index.jsp"></jsp:include>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>
			<!-- End custom js for this page-->
</body>

</html>