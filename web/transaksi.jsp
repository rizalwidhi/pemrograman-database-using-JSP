<%-- 
    Document   : index
    Created on : 02 Okt 19, 20:26:26
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="stylebs.css">
       
        <title>Tabel with Bootstrap</title>
    </head>

    <body>
        

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Rizal</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item ">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="koneksi.jsp">Daftar Barang</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" tabindex="-1">About Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container p-4">
          
            <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Form Transaksi Pembelian</h1>
          </div>
        </div>
      </div>
    </div>
    <section class="content">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="card card-primary">
              <div class="card-header bg-primary text-white">
                <h3 class="card-title ">Transaksi Pembelian Snack</h3>
              </div>
              <%
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
                    %>
                      <div class="alert1 success">
                        <span class="closebtn">&times;</span>  
                        <strong>Success!</strong> Insert Data Successfully
                      </div>
                    <%

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
                    %>
                      <div class="alert1">
                        <span class="closebtn">&times;</span>  
                        <strong>Failed!</strong> Insert Data Failed
                      </div>
                    <%
                  }
                  
                }
              %>
              <form method="post" action="" role="form" >
                <div class="card-body">
                  <div class="form-group">
                    <strong>ID Transaksi</strong>
                    <input type="text" class="form-control" name="idtrans" placeholder="ID Transaksi">
                  </div>
                  <div class="form-group">
                    <label>Tanggal</label>
                    <input type="date" class="form-control" name="tglP">
                  </div>
                  <div class="form-group">
                    <label>ID Produsen</label>
                    <select class="form-control" name="idprodusen">
                      <option></option>
                      <%
                        ResultSet rs = sn.executeQuery("select * from produsen");
                        while(rs.next()){
                      %>
                        <option value="<%= rs.getString(1)%>">
                          <%= rs.getString(1)%> | <%= rs.getString(2)%>
                        </option>
                      <%}%>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Nama Barang</label></br>
                    <select class="form-control" name="namabarang1" style="width: 500px; margin-right: 0px; display: inline-block; ">
                      <option></option>
                      <%
                        rs = sn.executeQuery("select * from barang");
                        while(rs.next()){
                      %>
                        <option value="<%= rs.getString(1)%>">
                          <%= rs.getString(1)%> | <%= rs.getString(2)%>
                        </option>
                      <%}%>
                    </select>
                    <input type="text" class="form-control" style="width: 200px; margin-right: 0px; display: inline-block; " name="jml1" placeholder="Jumlah">
                    <input type="text" class="form-control" style="width: 200px; margin-right: 0px; display: inline-block; " name="hrg1" placeholder="Harga">

                    <select class="form-control" name="namabarang2" style="width: 500px; margin-right: 0px; display: inline-block; ">
                      <option></option>
                      <%
                        rs = sn.executeQuery("select * from barang");
                        while(rs.next()){
                      %>
                        <option value="<%= rs.getString(1)%>">
                          <%= rs.getString(1)%> | <%= rs.getString(2)%>
                        </option>
                      <%}%>
                    </select>
                    <input type="text" class="form-control" style="width: 200px; margin-right: 0px; display: inline-block; " name="jml2" placeholder="Jumlah">
                    <input type="text" class="form-control" style="width: 200px; margin-right: 0px; display: inline-block; " name="hrg2" placeholder="Harga">

                    <select class="form-control" name="namabarang3" style="width: 500px; margin-right: 0px; display: inline-block; ">
                      <option></option>
                      <%
                        rs = sn.executeQuery("select * from barang");
                        while(rs.next()){
                      %>
                        <option value="<%= rs.getString(1)%>">
                          <%= rs.getString(1)%> | <%= rs.getString(2)%>
                        </option>
                      <%}%>
                    </select>
                    <input type="text" class="form-control" style="width: 200px; margin-right: 0px; display: inline-block; " name="jml3" placeholder="Jumlah">
                    <input type="text" class="form-control" style="width: 200px; margin-right: 0px; display: inline-block; " name="hrg3" placeholder="Harga">
                  </div>  
                </div>
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary swalDefaultSuccess">Submit</button>
                  <button type="reset" class="btn btn-default">Reset</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
        </div>
            
        <!-- Footer -->
        <footer id="sticky-footer" class="py-4 bg-dark text-white-50">
            <div class="container text-center">
                <blockquote class="blockquote text-center">
                    <p class="mb-0">Non schole, sed vitae discimus.</p>
                    <footer class="blockquote-footer"> Epistulae morales ad Lucilium<cite title="Source Title"> Seneca</cite></footer>
                </blockquote>
                <small>Copyright &copy; Rizal Widhi Asyari </small>
            </div>
        </footer>
        <!-- Footer -->

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="alert.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
        </script>
    </body>

</html>
