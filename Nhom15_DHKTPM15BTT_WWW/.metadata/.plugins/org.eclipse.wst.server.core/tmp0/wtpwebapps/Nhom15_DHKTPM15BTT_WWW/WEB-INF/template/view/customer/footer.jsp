<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ##### Newsletter Area Start ##### -->
<section class="newsletter-area section-padding-100-0">
	<div class="container">
		<div class="row align-items-center">
			<!-- Newsletter Text -->
			<div class="col-12 col-lg-6 col-xl-7">
				<div class="newsletter-text mb-100">
					<h2>
						Subscribe for a <span>25% Discount</span>
					</h2>
					<p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero
						sit amet mi vulputate consectetur. Donec auctor interdum purus, ac
						finibus massa bibendum nec.</p>
				</div>
			</div>
			<!-- Newsletter Form -->
			<div class="col-12 col-lg-6 col-xl-5">
				<div class="newsletter-form mb-100">
					<form action="#" method="post">
						<input type="email" name="email" class="nl-email"
							placeholder="Your E-mail"> <input type="submit"
							value="Subscribe">
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- ##### Newsletter Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<footer class="footer_area clearfix">
	<div class="container">
		<div class="row align-items-center">
			<!-- Single Widget Area -->
			<div class="col-12 col-lg-4">
				<div class="single_widget_area">
					<!-- Logo -->
					<div class="footer-logo mr-50">
						<a href="<c:url value="/home" />"><img
							src="<c:url value="/assets/img/core-img/logo.png" />" alt=""></a>
					</div>
					<!-- Copywrite Text -->
					<p class="copywrite"> 
						-----------DHKTPM15BTT--------- <br> 19516531_TranThiAnhThu <br> 19525901_DinhThiPhuongThao <br>&copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						<img
							src="<c:url value="/assets/img/logo_contact/hr.png" /> ">
						by Nhom15<a href="https://colorlib.com" target="_blank"></a> 
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
			<!-- Single Widget Area -->
			<div class="col-12 col-lg-8">
				<div class="single_widget_area">
					<!-- Footer Menu -->
					<div class="footer_menu">
						<nav class="navbar navbar-expand-lg justify-content-end">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#footerNavContent"
								aria-controls="footerNavContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa fa-bars"></i>
							</button>
							<div class="collapse navbar-collapse" id="footerNavContent">
								<ul class="navbar-nav ml-auto">
									<c:forEach var="tempmenus" items="${menus}" varStatus="index">
										<c:if test="${index.first }">
											<li class="nav-item active">
										</c:if>
										<c:if test="${not index.first }">
											<li class="nav-item">
										</c:if>
										<a class="nav-link" href="<c:url value="${tempmenus.url}" />">${tempmenus.name}</a>
										</li>
									</c:forEach>
									<c:if test="${sessionScope.acc == null}">
										<li class="nav-item"><a class="nav-link" href="<c:url value="" />">Register</a></li>
									</c:if>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- ##### Footer Area End ##### -->

