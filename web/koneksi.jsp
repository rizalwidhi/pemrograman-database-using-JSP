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

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="stylebs.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <title>Distributor Snack</title>
    </head>

    <body>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">Distributor Snack</h1>
                <p class="lead">Persentasi Tugas UTS.</p>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#">Snack</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
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
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-success mb-2" data-toggle="modal" data-target="#exampleModalCenter">
                Tambah Data
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Tambah Data</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <!-- Untuk Tambah Data-->
                        <div class="modal-body">
                            <%
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306"
                                        + "/distributor_snack", "root", "");
                                Statement sn2 = cn.createStatement();

                                if ((request.getParameter("id_katalog") != null) && (request.getParameter("nama_barang") != null) && (request.getParameter("kategori") != null) && (request.getParameter("kemasan") != null) && (request.getParameter("produk") != null)&& (request.getParameter("harga") != null)) {
                                    String idB = request.getParameter("id_katalog");
                                    String namaB = request.getParameter("nama_barang");
                                    String kategoriB = request.getParameter("kategori");
                                    String kemasanB = request.getParameter("kemasan");
                                    String produkB = request.getParameter("produk");
                                    String hargaB = request.getParameter("harga");
                              
                                    String myQ = "insert into barang values('" + idB + "','" + namaB + "','" + kategoriB + "','" + kemasanB + "','" + produkB + "','" + hargaB + "')";
                                    int x;
                                    try {
                                        x = sn2.executeUpdate(myQ);
                                        
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        
                                    }
                                }
                           
                            ResultSet rs4,rs5,rs6,rs7,rs8;
                            PreparedStatement ps4 = cn.prepareStatement("Select * from barang");
                            PreparedStatement ps5 = cn.prepareStatement("Select * from kategori_snack");
                            PreparedStatement ps6 = cn.prepareStatement("Select * from kemasan");
                            PreparedStatement ps7 = cn.prepareStatement("Select * from produsen");
                            PreparedStatement ps8 = cn.prepareStatement("Select * from detail_barang");
                            
                            rs4 = ps4.executeQuery();
                            rs5 = ps5.executeQuery();
                            rs6 = ps6.executeQuery();
                            rs7 = ps7.executeQuery();
                            rs8 = ps8.executeQuery();
                            %>
                            <form>
                                <div class="form-group" method="post" action="">
                                    <label><strong>ID Barang</strong></label>
                                    <input type="text" class="form-control" name="id_katalog" id="#" placeholder="Masukkan Id">
                                </div>
                                <div class="form-group">
                                    <label><strong>Nama Barang</strong></label>
                                    <select class="form-control" name="nama_barang" id="#"><%while(rs4.next()){%>
                                        <option><%= rs4.getString(2)%></option>
                                        <%}%></select>
                                </div>
                                <div class="form-group">
                                    <label><strong>Kategori</strong></label>
                                    <select class="form-control" name="nama_barang" id="#"><%while(rs5.next()){%>
                                        <option><%= rs5.getString(2)%></option>
                                        <%}%></select>
                                </div>
                                <div class="form-group">
                                    <label><strong>Kemasan /gr</strong></label>
                                    <select class="form-control" name="nama_barang" id="#"><%while(rs6.next()){%>
                                        <option><%= rs6.getString(2)%></option>
                                        <%}%></select>
                                </div>
                                <div class="form-group">
                                    <label><strong>Produk</strong></label>
                                    <select class="form-control" name="nama_barang" id="#"><%while(rs7.next()){%>
                                        <option><%= rs7.getString(2)%></option>
                                        <%}%></select>
                                </div>
                                <div class="form-group">
                                    <label><strong>harga</strong></label>
                                    <select class="form-control" name="harga" id="#"><%while(rs8.next()){%>
                                        <option><%= rs8.getString(2)%></option>
                                        <%}%></select>
                                </div>
                               
                                <button type="submit" value="kirim" class="btn btn-primary" onClick="javascript : return confirm('Apakah yakin akan menambahkan data?')">Kirim</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
            <%
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/distributor_snack", "root", "");
                Statement sn = con.createStatement();

                if (request.getParameter("i") != null) {
                    String p = request.getParameter("i");
                    String q = "delete from katalog where id_katalog = '" + p + "'";

                    try {
                        sn.executeUpdate(q);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ResultSet rs = sn.executeQuery("select * from katalog");

            %>

            <div class="row">
                <div class="col-sm">
                    <table class="table table-striped table-hover">
                        <thead class="thead-dark ">
                            <tr>
                                <th scope="col">Id Barang</th>
                                <th scope="col">Nama Barang</th>
                                <th scope="col">Kategori</th>
                                <th scope="col">Kemasan</th>
                                <th scope="col">Produk</th>
                                <th scope="col">Harga</th>
                                <th scope="col">&nbsp;</th>
                                <th scope="col">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while (rs.next()) {%>
                            <tr>
                                <th scope="row"><%= rs.getString(1)%></th>
                                <td><%= rs.getString(2)%></td>
                                <td><%= rs.getString(3)%></td>                               
                                 <td><%= rs.getString(4)%> gr</td>
                                  <td><%= rs.getString(5)%></td>
                                  <td><%= rs.getString(6)%></td>
                                <td><a href="koneksi.jsp?i=<%= rs.getString(1)%>" onClick="javascript : return confirm('Apakah yakin akan menghapus data?')"><button type="button" class="btn btn-danger">
                                            Delete
                                        </button></a></td>
                                <td><!-- Button trigger modal -->
                                    <a href="update.jsp?u=<%= rs.getString(1)%>"><button type="button" class="btn btn-primary">
                                            Update
                                        </button></a>
                                </td>
                            </tr>
                            <% }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>

            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
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

            <%
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/distributor_snack", "root", "");
                Statement sn1 = con1.createStatement();
                ResultSet rs1;
                PreparedStatement ps = con1.prepareStatement("select * from katalog where nama_barang like ?");
                ps.setString(1, "%" + request.getParameter("cari_nama") + "%");
                rs1 = ps.executeQuery();
            %>
            <form class="text-center" method="post" action="">
                <h2 class="text-dark">Cari berdasarkan Nama</h2>
                <input type="text" name="cari_nama">
                <button type="submit" class="btn btn-outline-primary" name="cari">Cari</button>
                <button type="reset" class="btn btn-outline-danger" name="reset">Reset</button>
            </form>
            <br>
            
            <div class="row">
                <div class="col-sm">
                    <table class="table table-striped table-hover">
                        <thead class="table-primary">
                            <tr>
                               <th scope="col">Id Barang</th>
                                <th scope="col">Nama Barang</th>
                                <th scope="col">Kategori</th>
                                <th scope="col">Kemasan</th>
                                <th scope="col">Produk</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while (rs1.next()) {%>
                            <tr>
                                <th scope="row"><%= rs1.getString("id_barang")%></th>
                                <td><%= rs1.getString("nama_barang")%></td>
                                <td><%= rs1.getString("kategori")%></td>
                                <td><%= rs1.getString("Kemasan")%></td>
                                <td><%= rs1.getString("produk")%></td>
                                <td><%= rs1.getString("harga")%></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </div>
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