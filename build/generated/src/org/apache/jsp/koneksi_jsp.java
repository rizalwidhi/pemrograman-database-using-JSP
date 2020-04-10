package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class koneksi_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\n");
      out.write("              integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"stylebs.css\">\n");
      out.write("        <link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <title>Distributor Snack</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"jumbotron jumbotron-fluid\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h1 class=\"display-4\">Distributor Snack</h1>\n");
      out.write("                <p class=\"lead\">Persentasi Tugas UTS.</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">Snack</a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                    <ul class=\"navbar-nav\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"index.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link\" href=\"koneksi.jsp\">Daftar Barang</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\">Contact</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\" tabindex=\"-1\">About Us</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"container p-4\">\n");
      out.write("            <!-- Button trigger modal -->\n");
      out.write("            <button type=\"button\" class=\"btn btn-success mb-2\" data-toggle=\"modal\" data-target=\"#exampleModalCenter\">\n");
      out.write("                Tambah Data\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <!-- Modal -->\n");
      out.write("            <div class=\"modal fade\" id=\"exampleModalCenter\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\n");
      out.write("                <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                            <h5 class=\"modal-title\" id=\"exampleModalCenterTitle\">Tambah Data</h5>\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <!-- Untuk Tambah Data-->\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                            ");

                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306"
                                        + "/penjualan", "root", "");
                                Statement sn2 = cn.createStatement();

                                if ((request.getParameter("id_detail") != null) && (request.getParameter("id_barang") != null) && (request.getParameter("id_kategori") != null) && (request.getParameter("id_kemasan") != null) && (request.getParameter("id_produsen") != null)&& (request.getParameter("id_stok") != null)) {
                                    String idB = request.getParameter("id_detail");
                                    String namaB = request.getParameter("id_barang");
                                    String kategoriB = request.getParameter("id_kategori");
                                    String kemasanB = request.getParameter("id_kemasan");
                                    String produsenB = request.getParameter("id_produsen");
                                    
                                    String myQ = "insert into detail_barang values('" + idB + "','" + namaB + "','" + kategoriB + "','" + kemasanB + "','" + produsenB + "')";
                                    int x;
                                    try {
                                        x = sn2.executeUpdate(myQ);
                                        
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        
                                    }
                                }
                           
                            ResultSet rs4,rs5,rs6,rs7;
                            PreparedStatement ps4 = cn.prepareStatement("Select * from barang");
                            PreparedStatement ps5 = cn.prepareStatement("Select * from kategori");
                            PreparedStatement ps6 = cn.prepareStatement("Select * from kemasan");
                            PreparedStatement ps7 = cn.prepareStatement("Select * from produsen");
                            
                            
                            rs4 = ps4.executeQuery();
                            rs5 = ps5.executeQuery();
                            rs6 = ps6.executeQuery();
                            rs7 = ps7.executeQuery();
                           
                            
      out.write("\n");
      out.write("                            <form>\n");
      out.write("                                <div class=\"form-group\" method=\"post\" action=\"\">\n");
      out.write("                                    <label><strong>ID Barang</strong></label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"id_katalog\" id=\"#\" placeholder=\"Masukkan Id\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label><strong>Nama Barang</strong></label>\n");
      out.write("                                    <select class=\"form-control\" name=\"nama_barang\" id=\"#\">");
while(rs4.next()){
      out.write("\n");
      out.write("                                        <option>");
      out.print( rs4.getString(2));
      out.write("</option>\n");
      out.write("                                        ");
}
      out.write("</select>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label><strong>Kategori</strong></label>\n");
      out.write("                                    <select class=\"form-control\" name=\"kategori_snack\" id=\"#\">");
while(rs5.next()){
      out.write("\n");
      out.write("                                        <option>");
      out.print( rs5.getString(2));
      out.write("</option>\n");
      out.write("                                        ");
}
      out.write("</select>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label><strong>Kemasan /gr</strong></label>\n");
      out.write("                                    <select class=\"form-control\" name=\"jenis_kemasan\" id=\"#\">");
while(rs6.next()){
      out.write("\n");
      out.write("                                        <option>");
      out.print( rs6.getString(2));
      out.write("</option>\n");
      out.write("                                        ");
}
      out.write("</select>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label><strong>Produk</strong></label>\n");
      out.write("                                    <select class=\"form-control\" name=\"nama_produsen\" id=\"#\">");
while(rs7.next()){
      out.write("\n");
      out.write("                                        <option>");
      out.print( rs7.getString(2));
      out.write("</option>\n");
      out.write("                                        ");
}
      out.write("</select>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                               \n");
      out.write("                                <button type=\"submit\" value=\"kirim\" class=\"btn btn-primary\" onClick=\"javascript : return confirm('Apakah yakin akan menambahkan data?')\">Kirim</button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-footer\">\n");
      out.write("                            <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancel</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/penjualan", "root", "");
                Statement sn = con.createStatement();

                if (request.getParameter("i") != null) {
                    String p = request.getParameter("i");
                    String q = "delete from detail_barang where id_detail = '" + p + "'";

                    try {
                        sn.executeUpdate(q);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ResultSet rs = sn.executeQuery("SELECT detail_barang.*, stok.stok from detail_barang INNER JOIN stok ON detail_barang.id_barang = stok.id_barang");

            
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm\">\n");
      out.write("                    <table class=\"table table-striped table-hover\">\n");
      out.write("                        <thead class=\"thead-dark \">\n");
      out.write("                            <tr>\n");
      out.write("                                <th scope=\"col\">Id Barang</th>\n");
      out.write("                                <th scope=\"col\">Nama Barang</th>\n");
      out.write("                                <th scope=\"col\">Kategori</th>\n");
      out.write("                                <th scope=\"col\">Kemasan</th>\n");
      out.write("                                <th scope=\"col\">Produk</th>\n");
      out.write("                                <th scope=\"col\">Stok</th>\n");
      out.write("                                <th scope=\"col\">&nbsp;</th>\n");
      out.write("                                <th scope=\"col\">&nbsp;</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            ");
 while (rs.next()) {
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <th scope=\"row\">");
      out.print( rs.getString(1));
      out.write("</th>\n");
      out.write("                                <td>");
      out.print( rs.getString(2));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print( rs.getString(3));
      out.write("</td>                               \n");
      out.write("                                 <td>");
      out.print( rs.getString(4));
      out.write(" gr</td>\n");
      out.write("                                  <td>");
      out.print( rs.getString(5));
      out.write("</td>\n");
      out.write("                                  <td>");
      out.print( rs.getString(6));
      out.write("</td>\n");
      out.write("                                <td><a href=\"koneksi.jsp?i=");
      out.print( rs.getString(1));
      out.write("\" onClick=\"javascript : return confirm('Apakah yakin akan menghapus data?')\"><button type=\"button\" class=\"btn btn-danger\">\n");
      out.write("                                            Delete\n");
      out.write("                                        </button></a></td>\n");
      out.write("                                <td><!-- Button trigger modal -->\n");
      out.write("                                    <a href=\"update.jsp?u=");
      out.print( rs.getString(1));
      out.write("\"><button type=\"button\" class=\"btn btn-primary\">\n");
      out.write("                                            Update\n");
      out.write("                                        </button></a>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");
 }
                            
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <nav aria-label=\"Page navigation example\">\n");
      out.write("                <ul class=\"pagination justify-content-center\">\n");
      out.write("                    <li class=\"page-item disabled\">\n");
      out.write("                        <a class=\"page-link\" href=\"#\" tabindex=\"-1\">Previous</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\n");
      out.write("                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">2</a></li>\n");
      out.write("                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\n");
      out.write("                    <li class=\"page-item\">\n");
      out.write("                        <a class=\"page-link\" href=\"#\">Next</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            ");

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/penjualan", "root", "");
                Statement sn1 = con1.createStatement();
                ResultSet rs1;
                PreparedStatement ps = con1.prepareStatement("SELECT barang.*, stock.stock from barang INNER JOIN stock ON barang.id_barang = stock.id_barang where barang.nama_barang like ?");
                ps.setString(1, "%" + request.getParameter("cari_nama") + "%");
                rs1 = ps.executeQuery();
            
      out.write("\n");
      out.write("            <form class=\"text-center\" method=\"post\" action=\"\">\n");
      out.write("                <h2 class=\"text-dark\">Cari berdasarkan Nama</h2>\n");
      out.write("                <input type=\"text\" name=\"cari_nama\">\n");
      out.write("                <button type=\"submit\" class=\"btn btn-outline-primary\" name=\"cari\">Cari</button>\n");
      out.write("                <button type=\"reset\" class=\"btn btn-outline-danger\" name=\"reset\">Reset</button>\n");
      out.write("            </form>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm\">\n");
      out.write("                    <table class=\"table table-striped table-hover\">\n");
      out.write("                        <thead class=\"table-primary\">\n");
      out.write("                            <tr>\n");
      out.write("                               <th scope=\"col\">Id Barang</th>\n");
      out.write("                                <th scope=\"col\">Nama Barang</th>\n");
      out.write("                                <th scope=\"col\">Kategori</th>\n");
      out.write("                                <th scope=\"col\">Kemasan</th>\n");
      out.write("                                <th scope=\"col\">Produk</th>\n");
      out.write("                                <th scope=\"col\">Stok</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            ");
 while (rs1.next()) {
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <th scope=\"row\">");
      out.print( rs1.getString("id_barang"));
      out.write("</th>\n");
      out.write("                                <td>");
      out.print( rs1.getString("nama_barang"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print( rs1.getString("kategori"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print( rs1.getString("Kemasan"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print( rs1.getString("produk"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print( rs1.getString("stok"));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");
 }
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Footer -->\n");
      out.write("        <footer id=\"sticky-footer\" class=\"py-4 bg-dark text-white-50\">\n");
      out.write("            <div class=\"container text-center\">\n");
      out.write("                <blockquote class=\"blockquote text-center\">\n");
      out.write("                    <p class=\"mb-0\">Non schole, sed vitae discimus.</p>\n");
      out.write("                    <footer class=\"blockquote-footer\"> Epistulae morales ad Lucilium<cite title=\"Source Title\"> Seneca</cite></footer>\n");
      out.write("                </blockquote>\n");
      out.write("                <small>Copyright &copy; Rizal Widhi Asyari </small>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <!-- Footer -->\n");
      out.write("\n");
      out.write("        <!-- Optional JavaScript -->\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script src=\"alert.js\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"\n");
      out.write("                integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\">\n");
      out.write("        </script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"\n");
      out.write("                integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\">\n");
      out.write("        </script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"\n");
      out.write("                integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\">\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("\n");
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
