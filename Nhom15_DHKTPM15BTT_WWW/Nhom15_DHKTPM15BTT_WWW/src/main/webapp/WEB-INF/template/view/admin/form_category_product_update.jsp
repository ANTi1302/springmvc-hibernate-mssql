<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<!-- Gắn vô đây nha Thảo-->
					<div class="col-12 grid-margin">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">ADD PRODUCT</h4>
								<form class="form-sample">
									<div class="row">
									<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Name</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="Name">
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Category</label>
												<div class="col-sm-9">
													<select class="form-control" name="saller">
														<option>thao</option>
														<option>thu</option>

													</select>
												</div>
											</div>
										</div>
									</div>
									<button type="submit" class="btn btn-primary me-2"
										name="submid" onclick="window.location.href='${pageContext.request.contextPath}/admin/formproductupdate'; return false;">Next</button>
								</form>
							</div>
						</div>
					</div>

				</div>
			</div>


			<!-- row end -->

			<!-- content-wrapper ends -->
			<!-- partial:./partials/_footer.html -->
			  <%@ include file="footer.jsp" %>

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
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<!-- End custom js for this page-->
</body>

</html>