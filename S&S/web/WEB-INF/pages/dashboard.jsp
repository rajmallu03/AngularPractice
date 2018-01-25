
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Admin-Dashboard</title>
  <!-- Bootstrap core CSS-->
  <link href="resources/screen1/styles/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="resources/screen1/styles/font-awesome.min.css" rel="stylesheet" type="text/css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Custom styles for this template-->
  <link href="resources/screen1/styles/sb-admin.css" rel="stylesheet">


</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.jsp">S&S&nbsp;<span>OnBoarding</span></a>

    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="http://localhost:8080/RegistrationSample/sampleController.htm?action=dashboard">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Sales Agent">
          <a class="nav-link" href="http://localhost:8080/RegistrationSample/sampleController.htm?action=salesAgent">
            <i class="fa fa-user" aria-hidden="true"></i>
            <span class="nav-link-text">Sales Agent</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Customers">
          <a class="nav-link" href="http://localhost:8080/RegistrationSample/sampleController.htm?action=customers">
            <i class="fa fa-users" aria-hidden="true"></i>
            <span class="nav-link-text">Customers</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Settings">
          <a class="nav-link"  href="http://localhost:8080/RegistrationSample/sampleController.htm?action=settings">
            <i class="fa fa-cogs" aria-hidden="true"></i>
            <span class="nav-link-text">Settings</span>
          </a>
          
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Logout">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-sign-out" aria-hidden="true"></i>
            <span class="nav-link-text">Logout</span>
          </a>
          
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">


        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            Admin
          </a>
        </li>
      </ul>

    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">

        <li class="breadcrumb-item active">My Dashboard</li>
      </ol>
      <!-- Icon Cards-->
      <div class="row">
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card" style="width: 15rem;">
            <div class="card-body">
              <center><i class="fa fa-users extraClass" aria-hidden="true"></i></center>
              <br>
              <center><h6 class="card-subtitle mb-2">SALES AGENTS</h6></center>


            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card" style="width: 15rem;">
            <div class="card-body">
              <center><i class="fa fa-suitcase extraClass" aria-hidden="true"></i></center>
              <br>
              <center><h6 class="card-subtitle mb-2">EXHIBITORS</h6></center>

            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card" style="width: 15rem;">
            <div class="card-body">
              <center><i class="fa fa-inr extraClass" aria-hidden="true"></i></center>
              <br>
              <center><h6 class="card-subtitle mb-2">PRODUCERS</h6></center>

            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card" style="width: 15rem;">
            <div class="card-body">
              <center><i class="fa fa-male extraClass" aria-hidden="true"></i></center>
              <br>
              <center> <h6 class="card-subtitle mb-2">ENTREPRENEURS</h6></center>

            </div>
          </div>
        </div>
      </div>
      
      
      
     
   
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end this session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal" id="btn2">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="resources/screen1/js/jquery.min.js"></script>
    <script src="resources/screen1/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="resources/screen1/js/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="resources/screen1/js/Chart.min.js"></script>
    <script src="resources/screen1/js/jquery.dataTables.js"></script>
    <script src="resources/screen1/js/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="resources/screen1/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="resources/screen1/js/sb-admin-datatables.min.js"></script>
    <script src="resources/screen1/js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>
