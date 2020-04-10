package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class inputdata_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <title>Distributor Snack</title>\n");
      out.write("        <!-- plugins:css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/vendors/mdi/css/materialdesignicons.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/vendors/css/vendor.bundle.base.css\">\n");
      out.write("        <!-- endinject -->\n");
      out.write("        <!-- Plugin css for this page -->\n");
      out.write("        <!-- End plugin css for this page -->\n");
      out.write("        <!-- inject:css -->\n");
      out.write("        <!-- endinject -->\n");
      out.write("        <!-- Layout styles -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("        <!-- End layout styles -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"assets/images/favicon.png\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-scroller\">\n");
      out.write("            <!-- partial:partials/_navbar.html -->\n");
      out.write("            <nav class=\"navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row\">\n");
      out.write("                <div class=\"text-center navbar-brand-wrapper d-flex align-items-center justify-content-center\">\n");
      out.write("                    <a class=\"navbar-brand brand-logo\" href=\"index.html\"><img src=\"assets/images/logo.svg\" alt=\"logo\" /></a>\n");
      out.write("                    <a class=\"navbar-brand brand-logo-mini\" href=\"index.html\"><img src=\"assets/images/logo-mini.svg\" alt=\"logo\" /></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"navbar-menu-wrapper d-flex align-items-stretch\">\n");
      out.write("                    <button class=\"navbar-toggler navbar-toggler align-self-center\" type=\"button\" data-toggle=\"minimize\">\n");
      out.write("                        <span class=\"mdi mdi-menu\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <div class=\"search-field d-none d-md-block\">\n");
      out.write("                        <form class=\"d-flex align-items-center h-100\" action=\"#\">\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"navbar-nav navbar-nav-right\">\n");
      out.write("                        <li class=\"nav-item nav-profile dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" id=\"profileDropdown\" href=\"#\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                                 <div class=\"nav-profile-img\">\n");
      out.write("                  <img src=\"assets/images/faces-clipart/pic-4.png\" alt=\"image\">\n");
      out.write("                  <span class=\"availability-status online\"></span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"nav-profile-text\">\n");
      out.write("                  <p class=\"mb-1 text-black\">Rizal Widhi Asyari</p>\n");
      out.write("                </div>\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu navbar-dropdown\" aria-labelledby=\"profileDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">\n");
      out.write("                                    <i class=\"mdi mdi-cached mr-2 text-success\"></i> Activity Log </a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">\n");
      out.write("                                    <i class=\"mdi mdi-logout mr-2 text-primary\"></i> Signout </a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item d-none d-lg-block full-screen-link\">\n");
      out.write("                            <a class=\"nav-link\">\n");
      out.write("                                <i class=\"mdi mdi-fullscreen\" id=\"fullscreen-button\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <button class=\"navbar-toggler navbar-toggler-right d-lg-none align-self-center\" type=\"button\" data-toggle=\"offcanvas\">\n");
      out.write("                        <span class=\"mdi mdi-menu\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!-- partial -->\n");
      out.write("            <div class=\"container-fluid page-body-wrapper\">\n");
      out.write("                <!-- partial:partials/_sidebar.html -->\n");
      out.write("                <nav class=\"sidebar sidebar-offcanvas\" id=\"sidebar\">\n");
      out.write("                    <ul class=\"nav\">\n");
      out.write("                        <li class=\"nav-item nav-profile\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link\">\n");
      out.write("                                <div class=\"nav-profile-image\">\n");
      out.write("                  <img src=\"assets/images/faces-clipart/pic-4.png\" alt=\"profile\">\n");
      out.write("                  <span class=\"login-status online\"></span>\n");
      out.write("                  <!--change to offline or busy as needed-->\n");
      out.write("                </div>\n");
      out.write("                <div class=\"nav-profile-text d-flex flex-column\">\n");
      out.write("                  <span class=\"font-weight-bold mb-2\">Rizal Widhi Asyari</span>\n");
      out.write("                  <span class=\"text-secondary text-small\">18.5.00124</span>\n");
      out.write("                </div>\n");
      out.write("                                <i class=\"mdi mdi-bookmark-check text-success nav-profile-badge\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"index.html\">\n");
      out.write("                                <span class=\"menu-title\">Dashboard</span>\n");
      out.write("                                <i class=\"mdi mdi-home menu-icon\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"koneksi.jsp\">\n");
      out.write("                                <span class=\"menu-title\">Daftar Snack</span>\n");
      out.write("                                <i class=\"mdi mdi-food-fork-drink menu-icon\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"inputdata.jsp\">\n");
      out.write("                                <span class=\"menu-title\">Input Data</span>\n");
      out.write("                                <i class=\"mdi mdi-lead-pencil menu-icon\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#ui-basic\" aria-expanded=\"false\" aria-controls=\"ui-basic\">\n");
      out.write("                                <span class=\"menu-title\">Transaksi</span>\n");
      out.write("                                <i class=\"menu-arrow\"></i>\n");
      out.write("                                <i class=\"mdi mdi-cart menu-icon\"></i>\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"collapse\" id=\"ui-basic\">\n");
      out.write("                                <ul class=\"nav flex-column sub-menu\">\n");
      out.write("                                    <li class=\"nav-item\"> <a class=\"nav-link\" href=\"form_transaksi.jsp\">Form Transaksi</a></li>\n");
      out.write("                                    <li class=\"nav-item\"> <a class=\"nav-link\" href=\"history_pembelian.jsp\">Histori Transaksi</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("                <!-- partial -->\n");
      out.write("                <div class=\"main-panel\">\n");
      out.write("                    <div class=\"content-wrapper\">\n");
      out.write("\n");
      out.write("                        <!--content edit -->\n");
      out.write("\n");
      out.write("                        <div class=\"page-header\">\n");
      out.write("                            <h3 class=\"page-title\">\n");
      out.write("                                <span class=\"page-title-icon bg-gradient-primary text-white mr-2\">\n");
      out.write("                                    <i class=\"mdi mdi-format-list-bulleted\"></i>\n");
      out.write("                                </span> Form Data Barang </h3>\n");
      out.write("                            <nav aria-label=\"breadcrumb\">\n");
      out.write("                                <ul class=\"breadcrumb\">\n");
      out.write("                                    <li class=\"breadcrumb-item active\" aria-current=\"page\">\n");
      out.write("                                        <span></span>Overview <i class=\"mdi mdi-alert-circle-outline icon-sm text-primary align-middle\"></i>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                        <section class=\"content\">\n");
      out.write("                            <div class=\"col-md-12 grid-margin stretch-card\">\n");
      out.write("                                <div class=\"card\">\n");
      out.write("                                    <div class=\"card-body\">\n");
      out.write("                                        <h4 class=\"card-title\">Snack</h4>\n");
      out.write("                                        <p class=\"card-description\"> Harap isi form dengan teliti ! </p>\n");
      out.write("                                        ");

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
                                        
      out.write("\n");
      out.write("                                        <div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\"> \n");
      out.write("                                            <strong>Success!</strong> Insert Data Successfully\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n");
      out.write("                                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                            </button>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");

                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        
      out.write("\n");
      out.write("                                       <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\"> \n");
      out.write("                                            <strong>Failed!</strong> Insert Data Failed\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n");
      out.write("                                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                            </button>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");

                                                }
                                            }
                                            ResultSet rs1, rs2, rs3;
                                            PreparedStatement ps1 = con.prepareStatement("SELECT * from produk");
                                            PreparedStatement ps2 = con.prepareStatement("SELECT * from kemasan");
                                            PreparedStatement ps3 = con.prepareStatement("SELECT * from jenis");
                                            rs1 = ps1.executeQuery();
                                            rs2 = ps2.executeQuery();
                                            rs3 = ps3.executeQuery();
                                        
      out.write("\n");
      out.write("                                        <form method=\"post\" action=\"\" role=\"form\" >\n");
      out.write("                                            <div class=\"card-body\">\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label>ID barang</label>\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\" name=\"id_barang\" placeholder=\"ID barang\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label>Nama barang</label>\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\" name=\"nama_barang\" placeholder=\"Nama barang\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label>kemasan</label></br>\n");
      out.write("                                                    <select class=\"form-control\" name=\"kemasan\" style=\"width: calc(100% - 110px); margin-right: 0px; display: inline-block; \">\n");
      out.write("                                                        ");
 while (rs2.next()) {
      out.write(" \n");
      out.write("                                                        <option>");
      out.print( rs2.getString(2));
      out.write("</option>\n");
      out.write("                                                        ");
 }
      out.write("\n");
      out.write("                                                    </select>\n");
      out.write("                                                    <button type=\"button\" class=\"btn btn-secondary float-right\" data-toggle=\"modal\" data-target=\"#modal-sm-kemasan\" >Add</button>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label>Jenis</label></br>\n");
      out.write("                                                    <select class=\"form-control\" name=\"jenis\" style=\"width: calc(100% - 110px); margin-right: 0px; display: inline-block; \">\n");
      out.write("                                                        ");
 while (rs3.next()) {
      out.write(" \n");
      out.write("                                                        <option>");
      out.print( rs3.getString(2));
      out.write("</option>\n");
      out.write("                                                        ");
 }
      out.write("\n");
      out.write("                                                    </select>\n");
      out.write("                                                    <button type=\"button\" class=\"btn btn-secondary float-right\" data-toggle=\"modal\" data-target=\"#modal-sm-jenis\" >Add</button>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label>produk</label></br>\n");
      out.write("                                                    <select class=\"form-control\" name=\"produk\" style=\"width: calc(100% - 110px); margin-right: 0px; display: inline-block; \">\n");
      out.write("                                                        ");
 while (rs1.next()) {
      out.write(" \n");
      out.write("                                                        <option>");
      out.print( rs1.getString(2));
      out.write("</option>\n");
      out.write("                                                        ");
 }
      out.write("\n");
      out.write("                                                    </select>\n");
      out.write("                                                    <button type=\"button\" class=\"btn btn-secondary float-right\" data-toggle=\"modal\" data-target=\"#modal-sm-produk\" >Add</button>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                                <button type=\"submit\" class=\"btn btn-primary swalDefaultSuccess\">Submit</button>\n");
      out.write("                                                <button type=\"reset\" class=\"btn btn-default\">Reset</button>\n");
      out.write("                                        </form>\n");
      out.write("                                        ");

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
                                        
      out.write("\n");
      out.write("                                        <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\"> \n");
      out.write("                                            <strong>Failed!</strong> Insert Data Failed\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n");
      out.write("                                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                            </button>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");

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
                                        
      out.write("\n");
      out.write("                                       <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\"> \n");
      out.write("                                            <strong>Failed!</strong> Insert Data Failed\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n");
      out.write("                                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                            </button>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");

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
                                        
      out.write("\n");
      out.write("                                       <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\"> \n");
      out.write("                                            <strong>Failed!</strong> Insert Data Failed\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n");
      out.write("                                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                            </button>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");

                                                }
                                            }
                                        
      out.write("\n");
      out.write("                                        <div class=\"modal fade\" id=\"modal-sm-produk\">\n");
      out.write("                                            <div class=\"modal-dialog modal-sm\">\n");
      out.write("                                                <div class=\"modal-content\">\n");
      out.write("                                                    <div class=\"modal-header\">\n");
      out.write("                                                        <h4 class=\"modal-title\">Add produk</h4>\n");
      out.write("                                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                        </button>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <form method=\"post\" action=\"\">\n");
      out.write("                                                        <div class=\"modal-body\">\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label>produk</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control\" name=\"produkm\" placeholder=\"produk\">\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"modal-footer justify-content-between\">\n");
      out.write("                                                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                                            <button type=\"submit\" class=\"btn btn-primary\">Save</button>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </form>\n");
      out.write("                                                </div>\n");
      out.write("                                                <!-- /.modal-content -->\n");
      out.write("                                            </div>\n");
      out.write("                                            <!-- /.modal-dialog -->\n");
      out.write("                                        </div>\n");
      out.write("                                        <!-- /.modal -->\n");
      out.write("                                        <div class=\"modal fade\" id=\"modal-sm-kemasan\">\n");
      out.write("                                            <div class=\"modal-dialog modal-sm\">\n");
      out.write("                                                <div class=\"modal-content\">\n");
      out.write("                                                    <div class=\"modal-header\">\n");
      out.write("                                                        <h4 class=\"modal-title\">Add kemasan</h4>\n");
      out.write("                                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                        </button>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <form method=\"post\" action=\"\">\n");
      out.write("                                                        <div class=\"modal-body\">\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label>kemasan</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control\" name=\"kemasanm\" placeholder=\"kemasan\">\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"modal-footer justify-content-between\">\n");
      out.write("                                                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                                            <button type=\"submit\" class=\"btn btn-primary\">Save</button>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </form>\n");
      out.write("                                                </div>\n");
      out.write("                                                <!-- /.modal-content -->\n");
      out.write("                                            </div>\n");
      out.write("                                            <!-- /.modal-dialog -->\n");
      out.write("                                        </div>\n");
      out.write("                                        <!-- /.modal -->\n");
      out.write("                                        <div class=\"modal fade\" id=\"modal-sm-jenis\">\n");
      out.write("                                            <div class=\"modal-dialog modal-sm\">\n");
      out.write("                                                <div class=\"modal-content\">\n");
      out.write("                                                    <div class=\"modal-header\">\n");
      out.write("                                                        <h4 class=\"modal-title\">Add Jenis</h4>\n");
      out.write("                                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                        </button>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <form method=\"post\" action=\"\">\n");
      out.write("                                                        <div class=\"modal-body\">\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label>Jenis</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control\" name=\"jenism\" placeholder=\"Jenis\">\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"modal-footer justify-content-between\">\n");
      out.write("                                                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                                            <button type=\"submit\" class=\"btn btn-primary\">Save</button>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </form>\n");
      out.write("                                                </div>\n");
      out.write("                                                <!-- /.modal-content -->\n");
      out.write("                                            </div>\n");
      out.write("                                            <!-- /.modal-dialog -->\n");
      out.write("                                        </div>\n");
      out.write("                                        <!-- /.modal -->\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- content-wrapper ends -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- partial:partials/_footer.html -->\n");
      out.write("                    <footer class=\"footer\">\n");
      out.write("                        <div class=\"d-sm-flex justify-content-center justify-content-sm-between\">\n");
      out.write("                            <span class=\"text-muted text-center text-sm-left d-block d-sm-inline-block\">Copyright © 2017 <a href=\"https://www.bootstrapdash.com/\" target=\"_blank\">BootstrapDash</a>. All rights reserved.</span>\n");
      out.write("                            <span class=\"float-none float-sm-right d-block mt-1 mt-sm-0 text-center\">Hand-crafted & made with <i class=\"mdi mdi-heart text-danger\"></i></span>\n");
      out.write("                        </div>\n");
      out.write("                    </footer>\n");
      out.write("                    <!-- partial -->\n");
      out.write("                </div>\n");
      out.write("                <!-- main-panel ends -->\n");
      out.write("            </div>\n");
      out.write("            <!-- page-body-wrapper ends -->\n");
      out.write("        </div>\n");
      out.write("        <!-- container-scroller -->\n");
      out.write("        <!-- plugins:js -->\n");
      out.write("        <script src=\"assets/vendors/js/vendor.bundle.base.js\"></script>\n");
      out.write("        <!-- endinject -->\n");
      out.write("        <!-- Plugin js for this page -->\n");
      out.write("        <script src=\"assets/vendors/chart.js/Chart.min.js\"></script>\n");
      out.write("        <!-- End plugin js for this page -->\n");
      out.write("        <!-- inject:js -->\n");
      out.write("        <script src=\"assets/js/off-canvas.js\"></script>\n");
      out.write("        <script src=\"assets/js/hoverable-collapse.js\"></script>\n");
      out.write("        <script src=\"assets/js/misc.js\"></script>\n");
      out.write("        <!-- endinject -->\n");
      out.write("        <!-- Custom js for this page -->\n");
      out.write("        <script src=\"assets/js/dashboard.js\"></script>\n");
      out.write("        <script src=\"assets/js/todolist.js\"></script>\n");
      out.write("        <!-- End custom js for this page -->\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
