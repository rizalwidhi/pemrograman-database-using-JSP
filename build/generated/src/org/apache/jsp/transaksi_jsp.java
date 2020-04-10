package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class transaksi_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\n");
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
      out.write("       \n");
      out.write("        <title>Tabel with Bootstrap</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\">Rizal</a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                    <ul class=\"navbar-nav\">\n");
      out.write("                        <li class=\"nav-item \">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\">Home <span class=\"sr-only\">(current)</span></a>\n");
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
      out.write("\n");
      out.write("        <div class=\"container p-4\">\n");
      out.write("          \n");
      out.write("            <div class=\"content-wrapper\">\n");
      out.write("    <div class=\"content-header\">\n");
      out.write("      <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row mb-2\">\n");
      out.write("          <div class=\"col-sm-6\">\n");
      out.write("            <h1 class=\"m-0 text-dark\">Form Transaksi Pembelian</h1>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <section class=\"content\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-12\">\n");
      out.write("            <div class=\"card card-primary\">\n");
      out.write("              <div class=\"card-header bg-primary text-white\">\n");
      out.write("                <h3 class=\"card-title \">Transaksi Pembelian Snack</h3>\n");
      out.write("              </div>\n");
      out.write("              ");

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/snack", "root", "");
                Statement sn = con.createStatement();
                int a = 0;
                String idtrans;
                if((request.getParameter("idtrans") != null) && (request.getParameter("tglP") != null) && (request.getParameter("idprodusen") != null)){
                  idtrans = request.getParameter("idtrans");
                  String tglP = request.getParameter("tglP");
                  String idprodusen = request.getParameter("idprodusen");
                  String sql ="INSERT INTO trans_pembelian VALUES('"+idtrans+"','"+tglP+"','"+idprodusen+"')";
                  int x;
                  try{ 
                    a = sn.executeUpdate(sql);
                    
      out.write("\n");
      out.write("                      <div class=\"alert1 success\">\n");
      out.write("                        <span class=\"closebtn\">&times;</span>  \n");
      out.write("                        <strong>Success!</strong> Insert Data Successfully\n");
      out.write("                      </div>\n");
      out.write("                    ");


                    if((request.getParameter("namabarang1") != null) && (request.getParameter("jml1") != null) && (request.getParameter("hrg1") != null)){
                      String namabarang1 = request.getParameter("namabarang1");
                      int jml1 = Integer.parseInt(request.getParameter("jml1"));
                      int hrg1 = Integer.parseInt(request.getParameter("hrg1"));
                      sql ="INSERT INTO detail_trans values(NULL, '"+idtrans+"','"+namabarang1+"','"+jml1+"','"+hrg1+"')";
                      try{ 
                        a = sn.executeUpdate(sql);

                        if((request.getParameter("namabarang2") != null) && (request.getParameter("jml2") != null) && (request.getParameter("hrg2") != null)){
                          String namabarang2 = request.getParameter("namabarang2");
                          int jml2 = Integer.parseInt(request.getParameter("jml2"));
                          int hrg2 = Integer.parseInt(request.getParameter("hrg2"));
                          sql ="INSERT INTO detail_trans values(NULL, '"+idtrans+"','"+namabarang2+"','"+jml2+"','"+hrg2+"')";
                          try{ 
                            a = sn.executeUpdate(sql);

                            if((request.getParameter("namabarang3") != null) && (request.getParameter("jml3") != null) && (request.getParameter("hrg3") != null)){
                              String namabarang3 = request.getParameter("namabarang3");
                              int jml3 = Integer.parseInt(request.getParameter("jml3"));
                              int hrg3 = Integer.parseInt(request.getParameter("hrg3"));
                              sql ="INSERT INTO detail_trans values(NULL, '"+idtrans+"','"+namabarang3+"','"+jml3+"','"+hrg3+"')";
                              try{ 
                                a = sn.executeUpdate(sql);
                              }catch(Exception e){
                                e.printStackTrace();
                              }
                              sql ="UPDATE stock SET stock = (stock + '"+jml3+"') WHERE id_barang = '"+namabarang3+"'";
                              try{ 
                                a = sn.executeUpdate(sql);
                              }catch(Exception e){
                                e.printStackTrace();
                              }
                            }

                          }catch(Exception e){
                            e.printStackTrace();
                          }
                          sql ="UPDATE stock SET stock = (stock + '"+jml2+"') WHERE id_barang = '"+namabarang2+"'";
                          try{ 
                            a = sn.executeUpdate(sql);
                          }catch(Exception e){
                            e.printStackTrace();
                          }   
                        }

                      }catch(Exception e){
                        e.printStackTrace();
                      }
                      sql ="UPDATE stock SET stock = (stock + '"+jml1+"') WHERE id_barang = '"+namabarang1+"'";
                      try{ 
                        a = sn.executeUpdate(sql);
                      }catch(Exception e){
                        e.printStackTrace();
                      }
                    }
                  }catch(Exception e){
                    e.printStackTrace();
                    
      out.write("\n");
      out.write("                      <div class=\"alert1\">\n");
      out.write("                        <span class=\"closebtn\">&times;</span>  \n");
      out.write("                        <strong>Failed!</strong> Insert Data Failed\n");
      out.write("                      </div>\n");
      out.write("                    ");

                  }
                  
                }
              
      out.write("\n");
      out.write("              <form method=\"post\" action=\"\" role=\"form\" >\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <strong>ID Transaksi</strong>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"idtrans\" placeholder=\"ID Transaksi\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <label>Tanggal</label>\n");
      out.write("                    <input type=\"date\" class=\"form-control\" name=\"tglP\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <label>ID Produsen</label>\n");
      out.write("                    <select class=\"form-control\" name=\"idprodusen\">\n");
      out.write("                      <option></option>\n");
      out.write("                      ");

                        ResultSet rs = sn.executeQuery("select * from produsen");
                        while(rs.next()){
                      
      out.write("\n");
      out.write("                        <option value=\"");
      out.print( rs.getString(1));
      out.write("\">\n");
      out.write("                          ");
      out.print( rs.getString(1));
      out.write(" | ");
      out.print( rs.getString(2));
      out.write("\n");
      out.write("                        </option>\n");
      out.write("                      ");
}
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <label>Nama Barang</label></br>\n");
      out.write("                    <select class=\"form-control\" name=\"namabarang1\" style=\"width: 500px; margin-right: 0px; display: inline-block; \">\n");
      out.write("                      <option></option>\n");
      out.write("                      ");

                        rs = sn.executeQuery("select * from barang");
                        while(rs.next()){
                      
      out.write("\n");
      out.write("                        <option value=\"");
      out.print( rs.getString(1));
      out.write("\">\n");
      out.write("                          ");
      out.print( rs.getString(1));
      out.write(" | ");
      out.print( rs.getString(2));
      out.write("\n");
      out.write("                        </option>\n");
      out.write("                      ");
}
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" style=\"width: 200px; margin-right: 0px; display: inline-block; \" name=\"jml1\" placeholder=\"Jumlah\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" style=\"width: 200px; margin-right: 0px; display: inline-block; \" name=\"hrg1\" placeholder=\"Harga\">\n");
      out.write("\n");
      out.write("                    <select class=\"form-control\" name=\"namabarang2\" style=\"width: 500px; margin-right: 0px; display: inline-block; \">\n");
      out.write("                      <option></option>\n");
      out.write("                      ");

                        rs = sn.executeQuery("select * from barang");
                        while(rs.next()){
                      
      out.write("\n");
      out.write("                        <option value=\"");
      out.print( rs.getString(1));
      out.write("\">\n");
      out.write("                          ");
      out.print( rs.getString(1));
      out.write(" | ");
      out.print( rs.getString(2));
      out.write("\n");
      out.write("                        </option>\n");
      out.write("                      ");
}
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" style=\"width: 200px; margin-right: 0px; display: inline-block; \" name=\"jml2\" placeholder=\"Jumlah\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" style=\"width: 200px; margin-right: 0px; display: inline-block; \" name=\"hrg2\" placeholder=\"Harga\">\n");
      out.write("\n");
      out.write("                    <select class=\"form-control\" name=\"namabarang3\" style=\"width: 500px; margin-right: 0px; display: inline-block; \">\n");
      out.write("                      <option></option>\n");
      out.write("                      ");

                        rs = sn.executeQuery("select * from barang");
                        while(rs.next()){
                      
      out.write("\n");
      out.write("                        <option value=\"");
      out.print( rs.getString(1));
      out.write("\">\n");
      out.write("                          ");
      out.print( rs.getString(1));
      out.write(" | ");
      out.print( rs.getString(2));
      out.write("\n");
      out.write("                        </option>\n");
      out.write("                      ");
}
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" style=\"width: 200px; margin-right: 0px; display: inline-block; \" name=\"jml3\" placeholder=\"Jumlah\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" style=\"width: 200px; margin-right: 0px; display: inline-block; \" name=\"hrg3\" placeholder=\"Harga\">\n");
      out.write("                  </div>  \n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-footer\">\n");
      out.write("                  <button type=\"submit\" class=\"btn btn-primary swalDefaultSuccess\">Submit</button>\n");
      out.write("                  <button type=\"reset\" class=\"btn btn-default\">Reset</button>\n");
      out.write("                </div>\n");
      out.write("              </form>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("  </div>\n");
      out.write("        </div>\n");
      out.write("            \n");
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
      out.write("</html>\n");
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
