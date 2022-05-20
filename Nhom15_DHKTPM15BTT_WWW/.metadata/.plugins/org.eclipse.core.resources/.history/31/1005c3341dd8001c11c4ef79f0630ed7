<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		<%@ include file="header.jsp"%>

		<div>
			<!-- row end -->
			<div class="main-panel">
				<div class="row">
					<div class="card-body">
						<h4 class="card-title">Voucher form</h4>
						<form:form class="forms-sample" action="saveVoucher"
							modelAttribute="voucher" method="POST">
							<div class="form-group">
								<label for="exampleInputName1">Code</label>
								<form:input type="text" path="code" class="form-control"
									id="exampleInputName1" placeholder="Name" />
							</div>
							<button style="background-color: #223E9C" type="submit"
								class="btn btn-primary me-2">Submit</button>
							<button class="btn btn-light"
								onclick="window.location.href='${pageContext.request.contextPath}/admin/voucher/1&'; return false;">Cancel</button>
						</form:form>
					</div>
				</div>
			</div>

		</div>


		<%@ include file="footer.jsp"%>

		<!-- base:js -->
		<script src="vendors/js/vendor.bundle.base2.js"></script>
		<!-- endinject -->
		<!-- Plugin js for this page-->
		<script
			src="<c:url value="/assets/assets-admin/vendors/vendors/chart/Chart.min.js" />"></script>
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