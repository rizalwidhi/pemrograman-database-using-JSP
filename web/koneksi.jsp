<%-- 
    Document   : koneksi
    Created on : Oct 2, 2019, 9:21:31 PM
    Author     : Rizal
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
                                    <i class="mdi mdi-food-fork-drink"></i>
                                </span> Daftar Snack </h3>
                            <nav aria-label="breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item active" aria-current="page">
                                        <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <section class="content">
                            <div class="row">
                                <div class="col-lg-12 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="card-tools">
                                                <form method="post" action="">
                                                    <div class="input-group input-group-sm" style="width: 200px;">
                                                        <input type="text" name="cari" class="form-control float-right" placeholder="Search">
                                                        <div class="input-group-append">
                                                            <button type="submit" class="btn btn-default"><i class="mdi mdi-magnify"></i></button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="card-body table-responsive m-2">
                                            <%
                                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/snack", "root", "");
                                                Statement sn1 = con1.createStatement();
                                                if (request.getParameter("cari") != null) {
                                                    ResultSet rs1n;
                                                    PreparedStatement ps = con1.prepareStatement("SELECT barang.*, stock.stock from barang INNER JOIN stock ON barang.id_barang = stock.id_barang where barang.nama_barang like ? or barang.id_barang like ?");
                                                    ps.setString(1, "%" + request.getParameter("cari") + "%");
                                                    ps.setString(2, "%" + request.getParameter("cari") + "%");
                                                    try {
                                                        rs1n = ps.executeQuery();
                                            %>
                                            <table class="table table-hover m-0">
                                                <thead class="table-primary">
                                                    <tr>
                                                        <th>ID barang</th>
                                                        <th>Nama barang </th>
                                                        <th>kemasan</th>
                                                        <th>jenis</th>
                                                        <th>produk</th>
                                                        <th>Stok</th>
                                                        <th style="width:190px; min-width: 190px;">Action</th>
                                                    </tr>
                                                </thead>
                                                <% while (rs1n.next()) {%>
                                                <tbody>
                                                    <tr>
                                                        <td><%= rs1n.getString(1)%></td>
                                                        <td><%= rs1n.getString(2)%></td>
                                                        <td><%= rs1n.getString(3)%> gr</td>
                                                        <td><%= rs1n.getString(4)%></td>
                                                        <td><%= rs1n.getString(5)%></td>
                                                        <td><%= rs1n.getString(6)%></td>
                                                        <td>
                                                            <a onclick="if (confirm('Are you sure you want to delete?'))
                                                                        form.action = '/Config?pg=FIBiller&amp;cmd=delete';
                                                                    else
                                                                        return false;" href="delete.jsp?i=<%= rs1n.getString(1)%> "><button type="button" class="btn btn-danger">Delete</button></a>
                                                            <a href="formupdate.jsp?u=<%= rs1n.getString(1)%> "><button type="button" class="btn btn-primary">Update</button></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <% }%>
                                            </table>
                                            <%
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                }
                                            } else {
                                                ResultSet rs1n = sn1.executeQuery("SELECT barang.*, stock.stock from barang INNER JOIN stock ON barang.id_barang = stock.id_barang");
                                            %>
                                            <table class="table table-hover  m-0">
                                                <thead>
                                                    <tr class="table-primary">
                                                        <th>ID barang</th>
                                                        <th>Nama barang </th>
                                                        <th>kemasan</th>
                                                        <th>jenis</th> 
                                                        <th>produk</th>
                                                        <th>stok</th>
                                                        <th style="width:190px; min-width: 190px;">Action</th>
                                                    </tr>
                                                </thead>
                                                <% while (rs1n.next()) {%>
                                                <tbody>
                                                    <tr>
                                                        <td><%= rs1n.getString(1)%></td>
                                                        <td><%= rs1n.getString(2)%></td>
                                                        <td><%= rs1n.getString(3)%> gr</td>
                                                        <td><%= rs1n.getString(4)%></td>
                                                        <td><%= rs1n.getString(5)%></td>
                                                        <td<%= rs1n.getString(6)%></td>
                                                        <td>
                                                            <a onclick="if (confirm('Are you sure you want to delete?'))
                                                                        form.action = '/Config?pg=FIBiller&amp;cmd=delete';
                                                                    else
                                                                        return false;" href="delete.jsp?i=<%= rs1n.getString(1)%> "><button type="button" class="btn btn-danger">Delete</button></a>
                                                            <a href="formupdate.jsp?u=<%= rs1n.getString(1)%>"><button type="button" class="btn btn-primary">Update</button></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <% }%>
                                            </table>
                                            <% }%>
                                        </div>
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