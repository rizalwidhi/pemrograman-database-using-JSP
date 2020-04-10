<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Update barang | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/adminlte.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style type="text/css">
    .alert1 {
      padding: 20px;
      background-color: #f44336;
      color: white;
      opacity: 1;
      transition: opacity 0.6s;
      margin-bottom: 15px;
    }

    .alert1.success {background-color: #4CAF50;}
    .alert1.info {background-color: #2196F3;}
    .alert1.warning {background-color: #ff9800;}

    .closebtn {
      margin-left: 15px;
      color: white;
      font-weight: bold;
      float: right;
      font-size: 22px;
      line-height: 20px;
      cursor: pointer;
      transition: 0.3s;
    }

    .closebtn:hover {
      color: black;
    }
  </style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <nav class="main-header navbar navbar-expand navbar-dark navbar-danger">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index.html" class="nav-link">Home</a>
      </li>
    </ul>
  </nav>
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="index.html" class="brand-link">
      <span class="brand-text font-weight-light" style="padding-left: 10px;">Distributor snack</span>
    </a>
    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="info">
          <a href="#" class="d-block">Pemrograman Basis Data</a>
        </div>
      </div>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Data
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="tbbarang.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Distributor Snack</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="tbprodusen.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Produsen</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="tbpembelian.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pembelian</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                 Input
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="inputbarang.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Distributor Snack</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="inputprodusen.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Produsen</p>
                </a>
              </li>
              <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Transaksi
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pembelian.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pembelian</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </aside>
  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Form Update</h1>
          </div>
        </div>
      </div>
    </div>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Update barang</h3>
              </div>
              <%
                if(request.getParameter("u") != null){
                String param = request.getParameter("u");
                String q ="SELECT * from barang where id_barang = '"+param+"'";
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/snack", "root", "");
                Statement sn = con.createStatement();
                if((request.getParameter("id_barang") != null)){
                    try{ 
                        String id_barang = request.getParameter("id_barang");
                        String namabarang = request.getParameter("nama_barang");
                        String kemasan = request.getParameter("kemasan");
                        String jenis = request.getParameter("jenis");
                        String produk = request.getParameter("produk");
                       String sql1 = "UPDATE barang SET nama_barang = '"+namabarang+"',kemasan = '"+kemasan+"',jenis = '"+jenis+"', produk = '"+produk +"' where id_barang = '"+param+"'";
                        int x;
                        x= sn.executeUpdate(sql1);
                        %>
                            <div class="alert1 success">
                                <span class="closebtn">&times;</span>  
                                <strong>Success!</strong> Update Data Successfully
                            </div>
                        <%
                    }catch(Exception e){
                        e.printStackTrace();
                        %>
                            <div class="alert1">
                                <span class="closebtn">&times;</span>  
                                <strong>Failed!</strong> Update Data Failed
                            </div>
                        <%
                    }
                }
                ResultSet rs = sn.executeQuery(q);
                ResultSet rs1,rs2,rs3;
                PreparedStatement ps1 = con.prepareStatement("SELECT * from jenis");
                PreparedStatement ps2 = con.prepareStatement("SELECT * from kemasan");
                PreparedStatement ps3 = con.prepareStatement("SELECT * from produk");
                rs1 = ps1.executeQuery();
                rs2 = ps2.executeQuery();
                rs3 = ps3.executeQuery();

                while(rs.next()){
              %>
              <form method="post" action="" role="form" >
                <div class="card-body">
                  <div class="form-group">
                    <label>ID barang</label>
                    <input type="text" class="form-control" name="id_barang" value="<%= rs.getString(1) %>">
                  </div>
                  <div class="form-group">
                    <label>Nama barang</label>
                    <input type="text" class="form-control" name="nama_barang" value="<%= rs.getString(2) %>">
                  </div>
                  <div class="form-group">
                    <label>kemasan</label>
                    <select class="form-control" name="kemasan">
                      <% while(rs2.next()){ %> 
                        <option><%= rs2.getString(2) %></option>
                      <% }%>
                    </select>
                  </div>
                   <div class="form-group">
                    <label>jenis</label>
                  <select class="form-control" name="jenis">
                      <% while(rs1.next()){ %> 
                        <option><%= rs1.getString(2) %></option>
                      <% }%>
                    </select>
                  </div>
                  <div class="form-group">
                   <label>produk</label>
                   <select class="form-control" name="produk">
                      <% while(rs3.next()){ %> 
                        <option><%= rs3.getString(2) %></option>
                      <% }%>
                    </select>
                  </div>
                  
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary swalDefaultSuccess">Submit</button>
                  <button type="reset" class="btn btn-default">Reset</button>
                </div>
              </form>
            </div>
            <%}}%> 
          </div>
        </div>
      </div>
    </section>
  </div>
  <footer class="main-footer">
    <strong>Copyright &copy; 2019 Rid</strong>
    All rights reserved.
  </footer>
</div>
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="js/demo.js"></script>
<script type="text/javascript">
var close = document.getElementsByClassName("closebtn");
var i;
for(i=0; i<close.length; i++){
    close[i].onclick=function(){
        var div = this.parentElement;
        div.style.opacity = "0";
        setTimeout(function(){div.style.display = "none";},600);
    }
}
</script>
</body>
</html>

