<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Ellent Shop</title>
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


<!-- table edit -->

</style>
</head>

<body>
	<div class="container-scroller d-flex">

		<%@ include file="header.jsp"%>

		<div>
			<!-- row end -->
			<div class="main-panel">
				<div class="row">

					<div class="col-md-12">
						<div class="card card-user">
							<div class="card-header">
								<h5 class="card-title">Edit Profile</h5>
							</div>
							<div class="card-body">
								<c:forEach items="${listuser}" var="u">
									<form action="updatead" method="get">
										<div class="row">
											<div class="col-md-5 pr-1">
												<div class="form-group">
													<label>Ellent Shop (disabled)</label> <input type="text"
														class="form-control" disabled="" placeholder="Company"
														value="Ellent Shop INC-ANTi.">
												</div>
											</div>
											<div class="col-md-3 px-1">
												<div class="form-group">
													<label>Phone</label>
													<c:if test="${acc.phone !=null }">
														<%--              <input type="text" class="form-control" name="phone" disabled=""  placeholder="Phone number" value="${u.phone }"> --%>
														<input type="text" class="form-control" name="phone"
															disabled="" placeholder="Phone number"
															value="${acc.phone }">
													</c:if>
													<c:if test="${acc.phone ==null }">
														<input type="text" class="form-control" name="phone"
															placeholder="Phone number" value="${u.phone }">
													</c:if>

												</div>
											</div>
											<div class="col-md-4 pl-1">
												<div class="form-group">
													<label for="exampleInputEmail1">Email address</label> <input
														type="email" class="form-control" name="email"
														placeholder=${u.email }>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 pr-1">
												<div class="form-group">
													<label>First Name</label> <input type="text"
														class="form-control" placeholder="Company"
														name="firstName" value="${u.firstName }">
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>Last Name</label> <input type="text"
														class="form-control" placeholder="Last Name"
														name="lastName" value="${u.lastName }">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>Address</label> <input type="text"
														class="form-control" placeholder="Home Address"
														name="address" value="${u.address }">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="update ml-auto mr-auto">
												<button type="submit"
													style="background-color: #FBB710; border-style: none;"
													class="btn btn-primary btn-round">Update Profile</button>
											</div>
										</div>
									</form>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




		<!-- row end -->

		<%@ include file="footer.jsp"%>

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
		<script src="<c:url value="/assets/assets-admin/js/file-upload.js" />"></script>
		<!-- endinject -->
		<!-- plugin js for this page -->
		<script
			src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />"
			type="text/javascript"></script>
		<!-- End plugin js for this page -->
		<!-- Custom js for this page-->
		<script src="<c:url value="/assets/assets-admin/js/dashboard.js" />"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
		<!-- End custom js for this page-->
</body>

</html>