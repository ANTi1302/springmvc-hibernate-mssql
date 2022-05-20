<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Ellent Shop</title>itle>
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
					<div class="card-body">
						<h4 class="card-title">Categories Table</h4>

						<div class="table-responsive">
							<table class="table table-hover">
								<div class="form-group">
									<div class="input-group">
										<c:url var="Urlcategory" value="/admin/searchcategory/1&" />
										<form:form class="input-group" action="${Urlcategory}"
											method="GET">
											<input type="text" class="form-control" value="${tenS }"
												placeholder="Category's name"
												aria-label="Category's name" name="tenS">
											<div class="input-group-append">
												<button class="btn btn-sm btn-primary" type="submit">Search</button>
											</div>
										</form:form>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group" style="float: right;">
									</div>
								</div>
								<input type="button" value="Add Category"
									onclick="window.location.href='${pageContext.request.contextPath}/admin/formcategory'; return false;" />
								<table class="table table-bordered" id="tblData">
									<thead>
										<tr>
											<th>Category</th>
											<th>Active</th>
										</tr>

									</thead>

									<tbody>
										<c:forEach items="${listcate}" var="o">
											<c:url var="updateLink" value="/admin/updatecategory">
												<c:param name="categoryId" value="${o.categoryId}" />
											</c:url>
											<c:url var="deleteLink" value="/admin/deleteCategory">
												<c:param name="categoryId" value="${o.categoryId}" />
											</c:url>
											<tr class="table-info">
												<td>${o.name}</td>
												<td><button class="badge badge-warning"
														onclick="window.location.href='${updateLink}/admin/updatecategory'; return false;">Edit</button>
													<button class="badge badge-warning"
														onclick="window.location.href='${deleteLink}/admin/deleteBranch';if (!(confirm('Are you sure you want to delete this category?'))) return false">Delete</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</div>
								</div>
								</div>
								</div>
								<div>
									<nav aria-label="Page navigation example">
										<ul class="pagination justify-content-end">
											<c:if test="${tag>1 }&?tenS=">
												<li class="page-item disabled"><a class="page-link"
													href="${tag-1}" tabindex="-1">Previous</a></li>
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

								<%@ include file="footer.jsp"%>

								<!-- base:js -->
								<script
									src="<c:url value="/assets/assets-admin/vendors/js/vendor.bundle.base2.js" />"></script>
								<!-- endinject -->
								<!-- Plugin js for this page-->
								<script
									src="<c:url value="/assets/assets-admin/vendors/vendors/chart/Chart.min.js" />"></script>
								<script
									src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />"
									type="text/javascript"></script>
								<!-- End plugin js for this page-->
								<!-- inject:js -->
								<script
									src="<c:url value="/assets/assets-admin/js/off-canvas.js" />"></script>
								<script
									src="<c:url value="/assets/assets-admin/js/hoverable-collapse.js" />"></script>
								<script
									src="<c:url value="/assets/assets-admin/js/template.js" />"></script>
								<!-- endinject -->
								<!-- plugin js for this page -->
								<script
									src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />"
									type="text/javascript"></script>
								<!-- End plugin js for this page -->
								<!-- Custom js for this page-->
								<script
									src="<c:url value="/assets/assets-admin/js/dashboard.js" />"></script>
								<script
									src="<c:url value="/assets/assets-admin/vendors/js/bootstrap.bundle.min.js.map" />"></script>
								<script
									src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
									integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
									crossorigin="anonymous"></script>
								<!-- End custom js for this page-->
</body>

</html>