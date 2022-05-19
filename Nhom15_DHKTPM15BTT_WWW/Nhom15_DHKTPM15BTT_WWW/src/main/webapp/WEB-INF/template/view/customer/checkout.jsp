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
<title>Amado - Furniture Ecommerce Template | Checkout</title>

<!-- Favicon  -->
<link rel="icon"
	href="<c:url value="/assets/img/core-img/favicon.ico" />">

<!-- Core Style CSS -->
<link rel="stylesheet"
	href="<c:url value="/assets/css/font-awesome.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/css/core-style.css" /> ">
<link rel="stylesheet" href="<c:url value="/assets/css/position.css" />">

</head>

<body>
	<!-- Search Wrapper Area Start -->
	<%@ include file="header.jsp"%>
	<!-- Header Area End -->

	<div class="cart-table-area section-padding-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12 col-lg-8">
					<div class="checkout_details_area mt-50 clearfix">

						<div class="cart-title">
							<h2>Checkout</h2>
						</div>

						<form action="order" method="post">
							<c:if test="${errMsg !=null }">
								<i class="alert alert-success">${errMsg }</i>
							</c:if>
							<div class="row">
								<div class="col-md-6 mb-3">
									<input type="text" class="form-control" name="first_name"
										value="${sessionScope.acc.firstName}" placeholder="First Name"
										required>
								</div>
								<c:if test="${sessionScope.acc.lastName != null}">
									<div class="col-md-6 mb-3">
										<input type="text" class="form-control" name="last_name"
											value="${sessionScope.acc.lastName}" placeholder="Last Name"
											required>
									</div>
								</c:if>

								<div class="col-12 mb-3">
									<input type="text" class="form-control" name="company"
										placeholder="Company Name" value="">
								</div>
								<div class="col-12 mb-3">
									<input type="email" class="form-control" name="email"
										placeholder="Email" value="${sessionScope.acc.email}">
								</div>
								<div class="col-12 mb-3">
									<select class="w-100" id="country">
										<option value="usa">United States</option>
										<option value="uk">United Kingdom</option>
										<option value="ger">Germany</option>
										<option value="fra">France</option>
										<option value="ind">India</option>
										<option value="aus">Australia</option>
										<option value="bra">Brazil</option>
										<option value="cana">Canada</option>
									</select>
								</div>
								<div class="col-12 mb-3">
									<input type="text" class="form-control mb-3"
										name="street_address" placeholder="Address"
										value="${sessionScope.acc.address}">
								</div>
								<div class="col-12 mb-3">
									<input type="text" class="form-control" name="city"
										placeholder="Town" value="">
								</div>
								<div class="col-md-6 mb-3">
									<input type="text" class="form-control" name="zipCode"
										placeholder="Zip Code" value="">
								</div>
								<div class="col-md-6 mb-3">
									<input type="number" class="form-control" name="phone_number"
										min="0" placeholder="Phone No"
										value="${sessionScope.acc.phone}">
								</div>
								<div class="col-12 mb-3">
									<textarea name="comment" class="form-control w-100"
										id="comment" cols="30" rows="10"
										placeholder="Leave a comment about your order"></textarea>
								</div>

								<div class="col-12">
									<div class="custom-control custom-checkbox d-block mb-2">
										<input type="checkbox" class="custom-control-input"
											id="customCheck2"> <label
											class="custom-control-label" for="customCheck2">Create
											an accout</label>
									</div>
									<div class="custom-control custom-checkbox d-block">
										<input type="checkbox" class="custom-control-input"
											id="customCheck3"> <label
											class="custom-control-label" for="customCheck3">Ship
											to a different address</label>
									</div>
								</div>
							</div>
							<!--  </form> -->
					</div>
				</div>
				<div class="col-12 col-lg-4">
					<div class="cart-summary">
						<h5>Cart Total</h5>
						<ul class="summary-table">
							<li><span>subtotal:</span> <span>${total}</span></li>
							<li><span>delivery:</span> <span>Free</span></li>
							<li><span>total:</span> <span>${sum}</span></li>
						</ul>

						<div class="payment-method">
							<!-- Cash on delivery -->
							<div class="custom-control custom-checkbox mr-sm-2">
								<input type="checkbox" class="custom-control-input" id="cod"
									checked> <label class="custom-control-label" for="cod">Cash
									on Delivery</label>
							</div>
							<!-- Paypal -->
							<div class="custom-control custom-checkbox mr-sm-2">
								<input type="checkbox" class="custom-control-input" id="paypal">
								<label class="custom-control-label" for="paypal">Paypal
									<img class="ml-15"
									src="<c:url value="/assets/img/core-img/paypal.png" />" alt="">
								</label>
							</div>
						</div>

						<div class="cart-btn mt-100">
							<button type="submit" class="btn amado-btn w-100">
								Checkout</button>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
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

</body>

</html>