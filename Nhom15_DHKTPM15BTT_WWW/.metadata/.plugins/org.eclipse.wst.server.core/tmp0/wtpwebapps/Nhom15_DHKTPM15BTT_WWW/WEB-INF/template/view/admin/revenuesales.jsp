<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
					<div class="card-body">
						<input id="modal_product_id" style="display: none;">

						<div class="product-sear panel-sear">

							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 padd-0">
								<h5 style="float: left;">
									<label style="color: #307ecc; padding-left: 10px;">
										<div class="" style="display: flex">
											<input type="text" class="form-control txt-sinventory"
												placeholder="product_id or product_name ">
										</div>
									</label> <label style="color: #307ecc;">
							</div>

							</label> <label style="color: #307ecc;"> <%-- <div class="">
									<c:url var="Url" value="/admin/revenueall/1&" />
									<c:url var="Url1" value="/admin/revenueyear/1&" />
									<c:url var="Url2" value="/admin/revenuemonth/1&" />
									<c:url var="Url3" value="/admin/revenuequarter/1&" />
									<select class="form-control" id="option_inventory">
										<option value="0">--All--</option>
										<option value="2">Revenue By Year</option>
										<option value="3">Revenue By Month</option>
										<option value="3">Revenue By Quarter</option>
									</select>
								</div> --%>

							</label> <label for="">
								<div class="" style="display: flex">
									<button style="box-shadow: none;" type="button"
										class="save btn btn-primary btn-large"
										onclick="cms_paging_inventory(1)">
										<i class="fa fa-search"></i> <span class="hidden-xs hidden-sm">Search</span>
									</button>
								</div>
							</label>
							<button style="float: right;" type="button"
								class="btn btn-info btn-icon-text" onclick="window.print()">
								Print <i class="mdi mdi-printer btn-icon-append"></i>
							</button>
							<button style="float: right;" type="button"
								class="btn btn-dark btn-icon-text"
								onclick="exportTableToExcel('tblData')">
								Export <i class="mdi mdi-file-check btn-icon-append"></i>
							</button>
							</h5>
						</div>
						<div class="col-md-12">
							<div class="form-group" style="float: right;">
								<div class="input-group">
									<div class="input-group-prepend">
										<button class="btn btn-sm btn-outline-primary dropdown-toggle"
											type="button" data-bs-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">Filter</button>
										<div class="dropdown-menu">
											<c:url var="Url" value="/admin/revenueall/1&" />
											<c:url var="Url1" value="/admin/revenueyear/1&" />
											<c:url var="Url2" value="/admin/revenuemonth/1&" />
											<c:url var="Url3" value="/admin/revenuequarter/1&" />
											<form:form class="input-group" action="${Url1}" method="GET">
												<input type="submit"  class="dropdown-item"
													value="Revenue By Year" />
											</form:form>
											<form:form class="input-group" action="${Url2}" method="GET">
												<input type="submit"  class="dropdown-item"
													href="filterconfirm" value="Revenue By Month" />
											</form:form>
											<form:form class="input-group" action="${Url3}" method="GET">
												<input type="submit" class="dropdown-item"
													href="filtercancel" value="Revenue By Quarter" />
											</form:form>
											<div role="separator" class="dropdown-divider"></div>
											<form:form class="input-group" action="${Url}" method="GET">
												<input type="submit" class="dropdown-item"
													href="filterall" value="All" />
											</form:form>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="inventory-main-body">
							<div class="quick-info report row" style="margin-bottom: 10px;">
							</div>
							<div class="d-flex justify-content traffic-status">
								<div class="item">
									<p class="mb-"></p>
									<h5 class="font-weight-bold mb-0"></h5>
									<div class="color-border"></div>
								</div>
								<div class="item">
									<p class="mb-">Inventory</p>
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
									<p class="mb-">Inventory value</p>
									<h5 class="font-weight-bold mb-0">58,605</h5>
									<div class="color-border"></div>
								</div>
							</div>
							<div class="table-responsive">
								<table class="table table-bordered table-striped" id="tblData">
									<thead>
										<tr>
											<th class="text-center hidden-xs">Quater/Month/Year</th>
											<th class="text-center">Sum Quantity</th>
											<th class="text-center">Sum Price</th>
											<th class="text-center">Min Price</th>
											<th class="text-center">Max Price</th>
											<th class="text-center">AVG Price</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list }" var="l">
											<tr>
												<td onclick="cms_show_product_history(9)" class="hidden-xs"
													style="color: #2a6496; cursor: pointer;">${l[0] }</td>
												<td class="text-center ">${l[1] }</td>
												<td class="text-center">${l[2] }</td>
												<td class="text-center">${l[3] }</td>
												<td class="text-center">${l[4] }</td>
												<td class="text-center">${l[5] }</td>
											</tr>
										</c:forEach>

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
						<c:if test="${tag>1 }">
							<li class="page-item "><a class="page-link"
								href="${tag-1}&?tenS=" tabindex="-1">Previous</a></li>
						</c:if>
						<c:forEach begin="1" end="${endpage}" var="i">
							<li class="page-item"><a class="page-link"
								href="${i}&?tenS=${tenS}">${i}</a></li>
						</c:forEach>
						<c:if test="${tag<endpage }">
							<li class="page-item"><a class="page-link"
								href="${tag+1}&?tenS=">Next</a></li>
						</c:if>
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