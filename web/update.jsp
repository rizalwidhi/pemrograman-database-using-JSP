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
        <style>
            .jumbotron{
                position: relative;
                background: url("img/Snack4.jpg")center center;
                background-size: cover;
                overflow: hidden;
                color:white;
            }
        </style>
        <title>Tabel with Bootstrap</title>
    </head>

    <body>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">Pemrograman Database</h1>
                <p class="lead">Persentasi Menampilkan Koneksi Database.</p>
            </div>
        </div>

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
          
            <%
                if (request.getParameter("u") != null) {
                    String param = request.getParameter("u");
                    String q = "select * from katalog where id_katalog = '" + param + "'";

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/distributor_snack", "root", "");
                    Statement sn = con.createStatement();

                    if ((request.getParameter("id_katalog") != null)) {
                        try {
                            String id = request.getParameter("id_katalog");
                            String nama = request.getParameter("nama_barang");
                            String kategori = request.getParameter("kategori");
                            String kemasan = request.getParameter("kemasan");
                            String produk = request.getParameter("produk");
                            String sql = "UPDATE katalog SET id_katalog = '" + id + "', nama_barang = '" + nama + "', kategori = '" + kategori + "', kemasan = '" + kemasan + "', produk = '" + produk + "' where id_katalog = '" + param + "'";
                            int x;
                            x = sn.executeUpdate(sql);

            %>

            <%                            } catch (Exception e) {
                e.printStackTrace();
            %>

            <%
                    }
                }
                ResultSet rs = sn.executeQuery(q);
                while (rs.next()) {
            %>
            <form method="post" action="">
                <div class="form-group">
                    <label><strong>ID</strong></label>
                    <input type="text" class="form-control" name="id_brg"  value="<%= rs.getString(1)%>">
                </div>
                <div class="form-group">
                    <label><strong>Nama Barang</strong></label>
                    <input type="text" class="form-control" name="nama_brg"  value="<%= rs.getString(2)%>">
                </div>
                <div class="form-group">
                    <label><strong>Kategori</strong></label>
                    <input type="text" class="form-control" name="berat"  value="<%= rs.getString(3)%>">
                </div>
                <div class="form-group">
                    <label><strong>Kemasan</strong></label>
                    <input type="text" class="form-control" name="harga_beli" value="<%= rs.getString(4)%>">
                </div>
                <div class="form-group">
                    <label><strong>Produk</strong></label>
                    <input type="text" class="form-control" name="harga_jual" value="<%= rs.getString(5)%>">
                </div>
   
                <a href="koneksi.jsp?u=" onClick="javascript : return confirm('Apakah yakin akan menyimpan hasil edit data?')""><button type="submit" value="Save" class="btn btn-primary">Save</button></a>
            </form>

            <%}
    }%> 
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
