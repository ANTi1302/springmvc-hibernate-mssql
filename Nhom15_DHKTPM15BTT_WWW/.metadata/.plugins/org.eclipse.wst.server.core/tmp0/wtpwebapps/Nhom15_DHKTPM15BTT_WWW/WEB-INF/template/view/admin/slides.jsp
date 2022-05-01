<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Spica Admin</title>
  <!-- base:css -->
  <link rel="stylesheet" href="<c:url value="/assets/assets-admin/vendors/mdi/css/materialdesignicons.min.css" />">
  <link rel="stylesheet" href="<c:url value="/assets/assets-admin/vendors/css/vendor.bundle.base.css" />">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<c:url value="/assets/assets-admin/css/style.css" />" >
  <!-- endinject -->
  <link rel="shortcut icon" href="<c:url value="/assets/assets-admin/images/favicon.png" />" />

  <!-- table edit -->

  </style>
</head>

<body>
  <div class="container-scroller d-flex">

      <%@ include file="header.jsp" %>


      <div>
        <!-- row end -->
        <div class="main-panel">
          <div class="row">
            <div class="card-body">
              <h4 class="card-title">Slides Table</h4>
              <div class="table-responsive">
                <table class="table table-hover">
                 
                  <div class="form-group">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Recipient's username"
                        aria-label="Recipient's username">
                      <div class="input-group-append">
                        <button class="btn btn-sm btn-primary" type="button">Search</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group" style="float: right;">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</button>
                          <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                            <div role="separator" class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Separated link</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <button>Add Slides</button>
                  <thead>
                    <tr>
                      <th>Caption</th>
                      <th>Content</th>
                      <th>Image</th>
                      <th>Active</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Jacob</td>
                      <td>Photoshop</td>
                      <td>Photoshop</td>
                      <td><button class="badge badge-warning">Edit</button>
                        <button class="badge badge-warning">Delete</button>
                      </td>

                    </tr>
                    <tr>
                      <td>Messsy</td>
                      <td>Flash</td>
                      <td>Photoshop</td>
                      <td><button class="badge badge-warning">Edit</button>
                        <button class="badge badge-warning">Delete</button>
                      </td>
                    </tr>
                    <tr>
                      <td>John</td>
                      <td>Premier</td>
                      <td>Photoshop</td>
                      <td><button class="badge badge-warning">Edit</button>
                        <button class="badge badge-warning">Delete</button>
                      </td>
                    </tr>
                    <tr>
                      <td>Peter</td>
                      <td>After effects</td>
                      <td>Photoshop</td>
                      <td><button class="badge badge-warning">Edit</button>
                        <button class="badge badge-warning">Delete</button>
                      </td>
                    </tr>
                    <tr>
                      <td>Dave</td>
                      <td>53275535</td>
                      <td>Photoshop</td>
                      <td><button class="badge badge-warning">Edit</button>
                        <button class="badge badge-warning">Delete</button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div>
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-end">
              <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">Previous</a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#">Next</a>
              </li>
            </ul>
          </nav>
        </div>
      </div>


            <%@ include file="footer.jsp" %>

      <!-- base:js -->
  <script src="<c:url value="/assets/assets-admin/vendors/js/vendor.bundle.base2.js" />"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="<c:url value="/assets/assets-admin/vendors/vendors/chart/Chart.min.js" />"></script>
  <script src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />" type="text/javascript"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="<c:url value="/assets/assets-admin/js/off-canvas.js" />"></script>
 <script src="<c:url value="/assets/assets-admin/js/hoverable-collapse.js" />"></script>
  <script src="<c:url value="/assets/assets-admin/js/template.js" />"></script>
  <script src="<c:url value="/assets/assets-admin/js/file-upload.js" />"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />" type="text/javascript"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="<c:url value="/assets/assets-admin/js/dashboard.js" />"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <!-- End custom js for this page-->
</body>

</html>