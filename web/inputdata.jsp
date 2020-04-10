<%-- 
    Document   : form_transaksi
    Created on : Jan 13, 2020, 8:26:18 PM
    Author     : User
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Distributor Snack</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- End layout styles -->
        <link rel="shortcut icon" href="assets/images/favicon.png" />
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo text-primary" href="index.html"><h3>Barokah Snack</h3></a>
                    <a class="navbar-brand brand-logo-mini" href="index.html"><img src="assets/images/logo-mini.svg" alt="logo" /></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-stretch">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="mdi mdi-menu"></span>
                    </button>
                    <div class="search-field d-none d-md-block">
                        <form class="d-flex align-items-center h-100" action="#">
                        </form>
                    </div>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                 <div class="nav-profile-img">
                  <img src="assets/images/faces-clipart/pic-4.png" alt="image">
                  <span class="availability-status online"></span>
                </div>
                <div class="nav-profile-text">
                  <p class="mb-1 text-black">Rizal Widhi Asyari</p>
                </div>
                            </a>
                            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="mdi mdi-cached mr-2 text-success"></i> Activity Log </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">
                                    <i class="mdi mdi-logout mr-2 text-primary"></i> Signout </a>
                            </div>
                        </li>
                        <li class="nav-item d-none d-lg-block full-screen-link">
                            <a class="nav-link">
                                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
                            </a>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item nav-profile">
                            <a href="#" class="nav-link">
                                <div class="nav-profile-image">
                  <img src="assets/images/faces-clipart/pic-4.png" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">Rizal Widhi Asyari</span>
                  <span class="text-secondary text-small">18.5.00124</span>
                </div>
                                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">
                                <span class="menu-title">Dashboard</span>
                                <i class="mdi mdi-home menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="koneksi.jsp">
                                <span class="menu-title">Daftar Snack</span>
                                <i class="mdi mdi-food-fork-drink menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="inputdata.jsp">
                                <span class="menu-title">Input Data</span>
                                <i class="mdi mdi-lead-pencil menu-icon"></i>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                <span class="menu-title">Transaksi</span>
                                <i class="menu-arrow"></i>
                                <i class="mdi mdi-cart menu-icon"></i>
                            </a>
                            <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="form_transaksi.jsp">Form Transaksi</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="history_pembelian.jsp">Histori Transaksi</a></li>
                                </ul>
                            </div>
                        </li>

                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">

                        <!--content edit -->

                        <div class="page-header">
                            <h3 class="page-title">
                                <span class="page-title-icon bg-gradient-primary text-white mr-2">
                                    <i class="mdi mdi-format-list-bulleted"></i>
                                </span> Form Data Barang </h3>
                            <nav aria-label="breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item active" aria-current="page">
                                        <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <section class="content">
                            <div class="col-md-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Snack</h4>
                                        <p class="card-description"> Harap isi form dengan teliti ! </p>
                                        <%
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/snack", "root", "");
                                            Statement sn = con.createStatement();
                                            if ((request.getParameter("id_barang") != null) && (request.getParameter("nama_barang") != null) && (request.getParameter("kemasan") != null) && (request.getParameter("jenis") != null) && (request.getParameter("produk") != null)) {
                                                String id_barang = request.getParameter("id_barang");
                                                String nama_barang = request.getParameter("nama_barang");
                                                String kemasan = request.getParameter("kemasan");
                                                String jenis = request.getParameter("jenis");
                                                String produk = request.getParameter("produk");
                                                int stock = 0;
                                                String sql1 = "INSERT INTO barang values('" + id_barang + "','" + nama_barang + "','" + kemasan + "','" + jenis + "','" + produk + "')";
                                                String sql = "INSERT INTO stock values(NULL,'" + id_barang + "','" + stock + "')";
                                                int x, x1;
                                                try {
                                                    x = sn.executeUpdate(sql1);
                                                    x1 = sn.executeUpdate(sql);
                                        %>
                                        <div class="alert alert-success alert-dismissible fade show" role="alert"> 
                                            <strong>Success!</strong> Insert Data Successfully
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <%
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        %>
                                       <div class="alert alert-danger alert-dismissible fade show" role="alert"> 
                                            <strong>Failed!</strong> Insert Data Failed
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <%
                                                }
                                            }
                                            ResultSet rs1, rs2, rs3;
                                            PreparedStatement ps1 = con.prepareStatement("SELECT * from produk");
                                            PreparedStatement ps2 = con.prepareStatement("SELECT * from kemasan");
                                            PreparedStatement ps3 = con.prepareStatement("SELECT * from jenis");
                                            rs1 = ps1.executeQuery();
                                            rs2 = ps2.executeQuery();
                                            rs3 = ps3.executeQuery();
                                        %>
                                        <form method="post" action="" role="form" >
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <label>ID barang</label>
                                                    <input type="text" class="form-control" name="id_barang" placeholder="ID barang">
                                                </div>
                                                <div class="form-group">
                                                    <label>Nama barang</label>
                                                    <input type="text" class="form-control" name="nama_barang" placeholder="Nama barang">
                                                </div>
                                                <div class="form-group">
                                                    <label>kemasan</label></br>
                                                    <select class="form-control" name="kemasan" style="width: calc(100% - 110px); margin-right: 0px; display: inline-block; ">
                                                        <% while (rs2.next()) {%> 
                                                        <option><%= rs2.getString(2)%></option>
                                                        <% }%>
                                                    </select>
                                                    <button type="button" class="btn btn-secondary float-right" data-toggle="modal" data-target="#modal-sm-kemasan" >Add</button>
                                                </div>
                                                <div class="form-group">
                                                    <label>Jenis</label></br>
                                                    <select class="form-control" name="jenis" style="width: calc(100% - 110px); margin-right: 0px; display: inline-block; ">
                                                        <% while (rs3.next()) {%> 
                                                        <option><%= rs3.getString(2)%></option>
                                                        <% }%>
                                                    </select>
                                                    <button type="button" class="btn btn-secondary float-right" data-toggle="modal" data-target="#modal-sm-jenis" >Add</button>
                                                </div>
                                                <div class="form-group">
                                                    <label>produk</label></br>
                                                    <select class="form-control" name="produk" style="width: calc(100% - 110px); margin-right: 0px; display: inline-block; ">
                                                        <% while (rs1.next()) {%> 
                                                        <option><%= rs1.getString(2)%></option>
                                                        <% }%>
                                                    </select>
                                                    <button type="button" class="btn btn-secondary float-right" data-toggle="modal" data-target="#modal-sm-produk" >Add</button>
                                                </div>
                                            </div>
                                                <button type="submit" class="btn btn-primary swalDefaultSuccess">Submit</button>
                                                <button type="reset" class="btn btn-default">Reset</button>
                                        </form>
                                        <%
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/snack", "root", "");
                                            Statement sn1 = con1.createStatement();
                                            if ((request.getParameter("produkm") != null)) {
                                                String produk = request.getParameter("produkm");
                                                String sql = "INSERT INTO produk values(NULL,'" + produk + "')";
                                                int x;
                                                try {
                                                    x = sn1.executeUpdate(sql);
                                                    response.sendRedirect("inputdata.jsp");
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                        %>
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert"> 
                                            <strong>Failed!</strong> Insert Data Failed
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <%
                                                }
                                            }
                                            if ((request.getParameter("kemasanm") != null)) {
                                                String kemasan = request.getParameter("kemasanm");
                                                String sql = "INSERT INTO kemasan values(NULL,'" + kemasan + "')";
                                                int x;
                                                try {
                                                    x = sn1.executeUpdate(sql);
                                                    response.sendRedirect("inputdata.jsp");
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                        %>
                                       <div class="alert alert-danger alert-dismissible fade show" role="alert"> 
                                            <strong>Failed!</strong> Insert Data Failed
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <%
                                                }
                                            }
                                            if ((request.getParameter("jenism") != null)) {
                                                String jenis = request.getParameter("jenism");
                                                String sql = "INSERT INTO jenis values(NULL,'" + jenis + "')";
                                                int x;
                                                try {
                                                    x = sn1.executeUpdate(sql);
                                                    response.sendRedirect("inputdata.jsp");
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                        %>
                                       <div class="alert alert-danger alert-dismissible fade show" role="alert"> 
                                            <strong>Failed!</strong> Insert Data Failed
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <%
                                                }
                                            }
                                        %>
                                        <div class="modal fade" id="modal-sm-produk">
                                            <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Add produk</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <form method="post" action="">
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <label>produk</label>
                                                                <input type="text" class="form-control" name="produkm" placeholder="produk">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">Save</button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->
                                        <div class="modal fade" id="modal-sm-kemasan">
                                            <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Add kemasan</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <form method="post" action="">
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <label>kemasan</label>
                                                                <input type="text" class="form-control" name="kemasanm" placeholder="kemasan">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">Save</button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->
                                        <div class="modal fade" id="modal-sm-jenis">
                                            <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Add Jenis</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <form method="post" action="">
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <label>Jenis</label>
                                                                <input type="text" class="form-control" name="jenism" placeholder="Jenis">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">Save</button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->
                                    </div>
                                </div>
                            </div>

                    </div>
                    <!-- content-wrapper ends -->


                    <!-- partial:partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2017 <a href="https://www.bootstrapdash.com/" target="_blank">BootstrapDash</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script src="assets/vendors/chart.js/Chart.min.js"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="assets/js/off-canvas.js"></script>
        <script src="assets/js/hoverable-collapse.js"></script>
        <script src="assets/js/misc.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page -->
        <script src="assets/js/dashboard.js"></script>
        <script src="assets/js/todolist.js"></script>
        <!-- End custom js for this page -->
    </body>
</html>