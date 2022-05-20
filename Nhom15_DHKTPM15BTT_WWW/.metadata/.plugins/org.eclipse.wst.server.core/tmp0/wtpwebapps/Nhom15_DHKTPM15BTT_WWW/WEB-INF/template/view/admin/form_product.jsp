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
					<div class="col-12 grid-margin">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">ADD PRODUCT</h4>
								 <form:form class="form-sample" action="saveProduct" modelAttribute="product" method="POST">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Name</label>
												<div class="col-sm-9">
													<form:input path="name" class="form-control" />
												 <form:errors path="name" cssClass="alert alert-danger" element="div"/>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Amount</label>
												<div class="col-sm-9">
													<form:input path="amount" class="form-control" />
													 <form:errors path="amount" cssClass="alert alert-danger" element="div"/>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Price</label>
												<div class="col-sm-9">
													<form:input path="price" class="form-control" />
													 <form:errors path="price" cssClass="alert alert-danger" element="div"/>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Title</label>
												<div class="col-sm-9">
													<form:input path="title" class="form-control"/>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Size</label>
												<div class="col-sm-9">
													<form:select path="size" class="form-control">
													<form:option value="None">None</form:option>
														<form:option value="M">M</form:option>
														<form:option value="L">L</form:option>
														<form:option value="X">X</form:option>
													</form:select>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Highlight</label>
												<div class="col-sm-4">
													<div class="form-check">
														<label> <form:radiobutton path="highlight"
															class="form-check-input" 
															value="0" checked="" /> NO <i
															class="input-helper"></i></label>
													</div>
												</div>
												<div class="col-sm-5">
													<div class="form-check">
														<label> <form:radiobutton path="highlight"
															class="form-check-input" 
															 value="1"/> YES <i
															class="input-helper"></i></label>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">New Product</label>
												<div class="col-sm-4">
													<div class="form-check">
														<label> <form:radiobutton path="newProduct"
															class="form-check-input" 
														value="0"	checked=""/> NO <i
															class="input-helper"></i></label>
													</div>
												</div>
												<div class="col-sm-5">
													<div class="form-check">
														<label> <form:radiobutton
															class="form-check-input" path="newProduct"
															 value="1"/> YES <i
															class="input-helper"></i></label>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Quantity</label>
												<div class="col-sm-9">
													<form:input class="form-control" path="quatity"/>
													 <form:errors path="quatity" cssClass="alert alert-danger" element="div"/>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Voucher</label>
												<div class="col-sm-9">
													<form:select class="form-control" path="voucher">
												
													<form:options path="voucher" items="${listvoucher}" itemValue="voucherId" itemLabel="code"/>
												
													</form:select>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Sale</label>
												<div class="col-sm-9">
													<form:select class="form-control" path="sale">
														<form:option value="0.05">5%</form:option>
														<form:option value="0.1">10%</form:option>
													</form:select>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Detail</label>
												<div class="col-sm-9">
													<form:textarea path="details"
														class="form-control" cols="70" rows="10"></form:textarea>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Branch</label>
												<div class="col-sm-9">
													<form:select class="form-control" path="branchs">
													<form:options path="branchs" items="${listbranch}" itemValue="branchId" itemLabel="title"/>
													</form:select>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Saller</label>
												<div class="col-sm-9">
													<form:select class="form-control" path="user">
														<form:option value="${sessionScope.acc.userId}">${sessionScope.acc.firstName}
															${sessionScope.acc.lastName}</form:option>
													</form:select>
												</div>
											</div>
										</div>
									</div>
									<input type="submit" class="btn btn-primary me-2"
										value="Next" />
									<button class="btn btn-light" name="cancel" onclick="window.location.href='${pageContext.request.contextPath}/admin/product/1&'; return false;">Cancel</button>
								 </form:form>
							</div>
						</div>
					</div>
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
			<script src="<c:url value="/assets/assets-admin/js/hoverable-collapse.js" />"></script>
			<script src="<c:url value="/assets/assets-admin/js/template.js" />"></script>
			<!-- endinject -->
			<!-- plugin js for this page -->
			<script src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />"
				type="text/javascript"></script>
			<!-- End plugin js for this page -->
			<!-- Custom js for this page-->
			<script src="<c:url value="/assets/assets-admin/js/dashboard.js" />"></script>
			 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
			<!-- End custom js for this page-->
</body>

</html>