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

<!-- table edit -->

</style>
</head>

<body>
	<div class="container-scroller d-flex">

		<!-- partial:./partials/_sidebar.html -->
		<%@ include file="header.jsp"%>
		<!-- partial -->

		<div>
			<!-- row end -->
			<div class="main-panel">
				<div class="row">
					<!-- Gáº¯n vÃ´ ÄÃ¢y nha Tháº£o-->
					<div class="orders">
						<div
							class="breadcrumbs-fixed col-md-offset-2 panel-action panel-action2 padding-left-10">
							<br> <br>
							<h5 style="float: left;">

								<label style="color: #428bca; font-size: 23px;">Báo cáo
									doanh số </label> <label style="color: #307ecc; padding-left: 10px;" />
									<input type="radio" name="revenue" value="1" checked="">
									<span class="lbl">Theo đơn hàng</span>
								</label> <label style="color: #307ecc;"> <input type="radio"
									name="revenue" value="2"> <span class="lbl">Theo
										KH</span>
								</label> <label style="color: #307ecc;"> <input type="radio"
									name="revenue" value="4"> <span class="lbl">Theo
										NV bán hàng</span>
								</label>
							</h5>
							<button style="float: right;" type="button"
								class="btn btn-info btn-icon-text" onclick="window.print()">
								Print <i class="mdi mdi-printer btn-icon-append"></i>
							</button>
							<button style="float: right;" type="button"
								class="btn btn-dark btn-icon-text"
								onclick="exportTableToExcel('tblData')">
								Export <i class="mdi mdi-file-check btn-icon-append"></i>
							</button>
						</div>
						<br> <br>
						<div class="orders-content">
							<div class="form-group">
								<div class="input-group">
									<input type="date" class="form-control"
										placeholder="Tá»« ngÃ y" name="start"> <span
										style="padding: 6px 4px; width: auto">-</span> <input
										type="date" class="form-control" placeholder="Äáº¿n ngÃ y"
										name="end">
									<div class="input-group-append">
										<button class="btn btn-sm btn-primary" type="button">Search</button>
									</div>
								</div>
							</div>
							<div class="revenue-main-body">
								<div class="d-flex justify-content traffic-status">
									<div class="item">
										<p class="mb-"></p>
										<h5 class="font-weight-bold mb-0"></h5>
										<div class="color-border"></div>
									</div>
									<div class="item">
										<p class="mb-">Order number</p>
										<h5 class="font-weight-bold mb-0">93,956</h5>
										<div class="color-border"></div>
									</div>
									<div class="item">
										<p class="mb-"></p>
										<h5 class="font-weight-bold mb-0"></h5>
										<div class="color-border"></div>
									</div>
									<div class="item">
										<p class="mb-"></p>
										<h5 class="font-weight-bold mb-0"></h5>
										<div class="color-border"></div>
									</div>
									<div class="item">
										<p class="mb-">Sales</p>
										<h5 class="font-weight-bold mb-0">58,605</h5>
										<div class="color-border"></div>
									</div>
								</div>
								<div class="table-responsive">
									<table class="table table-bordered table-striped" id="tblData">
										<thead>
											<tr>
												<th class="text-center">Mã đơn hàng</th>
												<th class="text-center">Ngày bán</th>
												<th class="text-center">Khách hàng</th>
												<th class="text-center">SL</th>
												<th class="text-center">Tổng tiền</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td onclick="cms_show_product_history(9)"
													style="color: #2a6496;">DH00001</td>
												<td class="text-center">5-6-2022</td>
												<td class="text-center">Admin01</td>
												<td class="text-center">5</td>
												<td class="text-center">10,000,000</td>
											</tr>
											<tr>
												<td onclick="cms_show_product_history(9)" class="hidden-xs"
													style="color: #2a6496; cursor: pointer;">DH00002</td>
												<td class="text-center">5-1-2022</td>
												<td class="text-center">User01</td>
												<td class="text-center">1</td>
												<td class="text-center">2,000,000</td>
											</tr>
											<tr>
												<td onclick="cms_show_product_history(9)" class="hidden-xs"
													style="color: #2a6496; cursor: pointer;">DH00002</td>
												<td class="text-center">5-1-2022</td>
												<td class="text-center">User01</td>
												<td class="text-center">1</td>
												<td class="text-center">2,000,000</td>
											</tr>
											<tr>
												<td onclick="cms_show_product_history(9)" class="hidden-xs"
													style="color: #2a6496; cursor: pointer;">DH00002</td>
												<td class="text-center">5-1-2022</td>
												<td class="text-center">User01</td>
												<td class="text-center">1</td>
												<td class="text-center">2,000,000</td>
											</tr>
											<tr>
												<td onclick="cms_show_product_history(9)" class="hidden-xs"
													style="color: #2a6496; cursor: pointer;">DH00002</td>
												<td class="text-center">5-1-2022</td>
												<td class="text-center">User01</td>
												<td class="text-center">1</td>
												<td class="text-center">2,000,000</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div>
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-end">
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>


			<!-- row end -->

			<!-- content-wrapper ends -->
			<!-- partial:./partials/_footer.html -->
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
			<!-- endinject -->
			<!-- plugin js for this page -->
			<script
				src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />"
				type="text/javascript"></script>
			<!-- End plugin js for this page -->
			<!-- Custom js for this page-->
			<script src="<c:url value="/assets/assets-admin/js/dashboard.js" />"></script>
			<!-- End custom js for this page-->
			<script src="<c:url value="/assets/assets-admin/js/export.js" />"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>
</body>

</html>