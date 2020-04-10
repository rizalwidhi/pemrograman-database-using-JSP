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

                                if ((request.getParameter("id_supplier") != null) && (request.getParameter("nama_supplier") != null) && (request.getParameter("produk") != null) && (request.getParameter("alamat") != null) && (request.getParameter("no_hp") != null)) {
                                    String idS = request.getParameter("id_supplier");
                                    String namaS = request.getParameter("nama_supplier");
                                    String produkS = request.getParameter("produk");
                                    String alamatS = request.getParameter("alamat");
                                    String noS = request.getParameter("no_hp");
                                    String myQ = "insert into barang values('" + idS + "','" + namaS + "','" + produkS + "','" + alamatS + "','" + noS + "','";
                                    int x;
                                    try {
                                        x = sn2.executeUpdate(myQ);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                            %>
                            <form>
                                <div class="form-group" method="post" action="">
                                    <label><strong>ID Supplier</strong></label>
                                    <input type="text" class="form-control" name="id_supplier" id="#" placeholder="Masukkan Id">
                                </div>
                                <div class="form-group">
                                    <label><strong>Nama Supplier</strong></label>
                                    <input type="text" class="form-control" name="nama_supplier" id="#" placeholder="Masukkan Nama">
                                </div>
                                <div class="form-group">
                                    <label><strong>Produk</strong></label>
                                    <input type="text" class="form-control" name="produk" id="#" placeholder="Masukkan Berat">
                                </div>
                                <div class="form-group">
                                    <label><strong>Alamat</strong></label>
                                    <input type="text" class="form-control" name="alamat" id="#" placeholder="Masukkan Harga Beli">
                                </div>
                                <div class="form-group">
                                    <label><strong>No Hp</strong></label>
                                    <input type="text" class="form-control" name="no_hp" id="#" placeholder="Masukkan Harga Jual">
                                </div>
                                <button type="submit" value="kirim" class="btn btn-primary" onclick="saveData()">Kirim</button>
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
                    String q = "delete from supplier where id_supplier = '" + p + "'";

                    try {
                        sn.executeUpdate(q);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ResultSet rs = sn.executeQuery("select * from supplier");

            %>

            <div class="row">
                <div class="col-sm">
                    <table class="table table-striped table-hover">
                        <thead class="thead-dark ">
                            <tr>
                                <th scope="col">Id Supplier</th>
                                <th scope="col">Nama Supplier</th>
                                <th scope="col">Produk</th>
                                <th scope="col">Alamat</th>
                                <th scope="col">No Hp</th>
                                <th scope="col">&nbsp;</th>
                                <th scope="col">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while (rs.next()) {%>
                            <tr>
                                <th scope="row"><%= rs.getString(1)%></th>
                                <td><%= rs.getString(2)%></td>
                                <td><%= rs.getString(3)%> gr</td>                               
                                <td><%= rs.getString(4)%></td>
                                <td><%= rs.getString(5)%></td>
                                <td><a href="koneksi.jsp?i=<%= rs.getString(1)%>" onClick="delData()"><button type="button" class="btn btn-danger">
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
                PreparedStatement ps = con1.prepareStatement("select * from supplier where nama_supplier like ?");
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
                                <th scope="col">Id Supplier</th>
                                <th scope="col">Nama Supplier</th>
                                <th scope="col">Produk</th>
                                <th scope="col">Alamat</th>
                                <th scope="col">No Hp</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while (rs1.next()) {%>
                            <tr>
                                <th scope="row"><%= rs1.getString("id_supplier")%></th>
                                <td><%= rs1.getString("nama_supplier")%></td>
                                <td><%= rs1.getString("produk")%></td>
                                <td><%= rs1.getString("alamat")%></td>
                                <td><%= rs1.getString("no_hp")%></td>
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