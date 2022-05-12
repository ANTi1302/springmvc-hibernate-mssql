<!-- partial:./partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
      <ul class="nav">
        <li class="nav-item sidebar-category">
          <p>Navigation</p>
          <span></span>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/admin/home-admin">
            <i class="mdi mdi-view-quilt menu-icon"></i>
            <span class="menu-title">Dashboard</span>
          </a>
        </li>
        <li class="nav-item sidebar-category">
          <p>Components</p>
          <span></span>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/admin/adorder/1&">
            <i class="mdi mdi-cart menu-icon"></i>
            <span class="menu-title">Orders</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/admin/product/1&">
            <i class="mdi mdi-gift menu-icon"></i>
            <span class="menu-title">Products</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/admin/branch/1&">
            <i class="mdi mdi-codepen menu-icon"></i>
            <span class="menu-title">Branch</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/admin/category/1&">
            <i class="mdi mdi-grid-large menu-icon"></i>
            <span class="menu-title">Categories</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/admin/voucher/1&">
            <i class="mdi mdi-cards menu-icon"></i>
            <span class="menu-title">Vouchers</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="mdi mdi-clipboard-text menu-icon"></i>
            <span class="menu-title">Statistical</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="<c:url value="/admin/sales/1&" />">Sales</a></li>
              <li class="nav-item"> <a class="nav-link" href="<c:url value="/admin/inventory/1&" />">Inventory</a></li>
            </ul>
          </div>
        </li>

      </ul>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:./partials/_navbar.html -->
      <nav class="navbar col-lg-12 col-12 px-0 py-0 py-lg-4 d-flex flex-row">
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <div class="navbar-brand-wrapper">
            <a class="navbar-brand brand-logo" href="index.html"><img src="<c:url value="/assets/assets-admin/images/logo.svg" />" alt="logo" /></a>
            <a class="navbar-brand brand-logo-mini" href="index.html"><img src="<c:url value="/assets/assets-admin/images/logo-mini.svg" />" alt="logo" /></a>
          </div>
          <h4 class="font-weight-bold mb-0 d-none d-md-block mt-1">Welcome back, Brandon Haynes</h4>
          <ul class="navbar-nav navbar-nav-right">

          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
            data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
        <div class="navbar-menu-wrapper navbar-search-wrapper d-none d-lg-flex align-items-center">
          <ul class="navbar-nav navbar-nav-right">
          <c:if test="${sessionScope.acc != null}">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
                <img src="<c:url value="/assets/assets-admin/images/faces/face5.jpg" />" alt="profile" />
                <span class="nav-profile-name">${sessionScope.acc.firstName}
							${sessionScope.acc.lastName}</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
               <a class="dropdown-item"  href="${pageContext.request.contextPath}/admin/adaccount">
                  <i class="mdi mdi-settings text-primary"></i>
                  My Account
                </a>
                <a class="dropdown-item">
                  <i class="mdi mdi-logout text-primary"></i>
                  Logout
                </a>
              </div>
            </li>
            </c:if>
          </ul>
        </div>
      </nav>
      <!-- partial -->