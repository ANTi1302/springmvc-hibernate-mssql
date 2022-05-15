<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  uri="http://www.springframework.org/tags/form"  prefix="form"%>
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
					<div class="col-lg-12 stretch-card">
						<div class="card">
							<div class="card-body">
								<button style="float: right;" type="button"
									class="btn btn-info btn-icon-text" onclick="window.print()">
									Print <i class="mdi mdi-printer btn-icon-append"></i>
								</button>
								<button style="float: right;" type="button"
									class="btn btn-dark btn-icon-text"
									onclick="exportTableToExcel('tblData')">
									Export <i class="mdi mdi-file-check btn-icon-append"></i>
								</button>
								<h4 class="card-title">TABLE PRODUCT</h4>
								<div class="col-md-7 col-sm-9 col-xs-5 padd-0">
									<div class="right-action text-right">
										<div class="col-md-6 col-sm-7 hidden-xs"
											style="line-height: 50px;"></div>
										<div class="col-md-6 col-sm-5 col-xs-12">
											<input type="button" value="Add Product"
												class="add-product-button"
												onclick="window.location.href='${pageContext.request.contextPath}/admin/formproduct'; return false;" />
										</div>
									</div>
								</div>
								<c:url var="Url" value="/admin/search/1&" />
								<form:form class="input-group" action="${Url}" method="GET">
									<input type="text" class="form-control"
										placeholder="Recipient's username"  name="tenS"
										aria-label="Recipient's username">
									<div class="input-group-append">
										<input type="submit" class="btn btn-sm btn-primary" value="Search"/>
									</div>
								</form:form>
								
								
								<div class="table-responsive pt-3">
									<table class="table table-bordered" id="tblData">
										<thead>
											<tr>
												<th>Name</th>
												<th>Price</th>
												<th>Title</th>
												<th>Branch</th>
												<th>Created at</th>
												<th>Updated at</th>
												<th>Amount</th>
												<th>Status</th>
												<th></th>
											</tr>
										</thead>
										<tbody>

											<c:forEach items="${listproduct }" var="c">
												<c:url var="deleteLink" value="/admin/delete">
													<c:param name="productId" value="${c.productId }" />
												</c:url>
												<c:url var="updateLink" value="/admin/update">
													<c:param name="productId" value="${c.productId }" />
												</c:url>
												<tr class="table-info">
													<td>${c.name }</td>
													<td>${c.price }</td>
													<td>${c.title }</td>
													<td>${c.branchs.title }</td>
													<td>${c.createdAt }</td>
													<td>${c.updateAt }</td>
													<td>${c.amount }</td>
													<td><c:if test="${c.quatity<=0}">
															<label class="badge badge-danger">Out of stock</label>
														</c:if> <c:if test="${c.quatity>0}">
															<label class="badge badge-success">Stocking</label>
														</c:if></td>
													<td><a class="badge badge-warning"
														href="${updateLink}">Edit</a> <a
														class="badge badge-warning" href="${deleteLink}"
														onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false">Delete</a></td>
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
								<li class="page-item"><a class="page-link" href="${tag+1}&?tenS=">Next</a>
								</li>
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