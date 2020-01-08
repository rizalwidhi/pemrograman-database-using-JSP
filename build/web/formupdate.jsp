<%-- 
    Document   : koneksi
    Created on : Sep 29, 2019, 4:03:31 PM
    Author     : Liz
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Pemrograman Basis Data</title>
</head>
<body>
    <div class="header">
        <h1>Pemrograman Basis Data</h1>
    </div>
    <div class="contents">
    <div class="sidebar2">
        <ul>
            <li><a href="index.html">Tabel</a></li>
            <li><a href="koneksi.jsp">Koneksi DB</a></li>
            <li><a href="forminsert.jsp">Insert</a></li>
            <li><a href="if.jsp">Percabangan If</a></li>
            <li><a href="switchcase.jsp">Switch Case</a></li>
            <li><a href="looping.jsp">Perulangan</a></li>
        </ul>
    </div>

    <div class="content">
        <h1>Update Data</h1>
        <br>
        <div class="box-content">
            <%
                if(request.getParameter("u") != null){
                String param = request.getParameter("u");
                String q ="select * from pengarang where id = '"+param+"'";

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/pustaka", "root", "");
                Statement sn = con.createStatement();
                

                if((request.getParameter("id") != null)){
                        try{ 
                            String id = request.getParameter("id");
                            String nama = request.getParameter("nama");
                            String alamat = request.getParameter("alamat");
                            String kota = request.getParameter("kota");
                            String sql = "UPDATE pengarang SET id = '"+id+"', nama = '"+nama+"', alamat = '"+alamat+"', kota = '"+kota+"' where id = '"+param+"'";
                            int x;
                            x= sn.executeUpdate(sql);
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
                while(rs.next()){
            %>
            <div class="forminsert">
                <form method="post" action="">
                    <div class="inputupdate">
                    <h2>ID</h2>
                    <input type="text" name="id" value="<%= rs.getString(1) %>">
                    <br>
                    <br>
                    <h2>Nama</h2>
                    <input type="text" name="nama" value="<%= rs.getString(2) %>">
                    <br>
                    <br>
                    <h2>Alamat</h2>
                    <input type="text" name="alamat" value="<%= rs.getString(3) %>">
                    <br>
                    <br>
                    <h2>Kota</h2>
                    <input type="text" name="kota" value="<%= rs.getString(4) %>">
                    <br>
                    <br>
                    </div>
                    <input class="btn" type="submit" value="Save">
                    <input class="btn" type="reset" value="Reset">
                </form>
            </div>
            <%}}%> 
        </div>
    </div>
    </div>
    <div class="footer">
        <center>
            <h1>Adiek Allend - 18.5.00100</h1>
            <h1>&copy 2019 - Liz</h1>
        </center>  
    </div>
</body>
<script type="text/javascript" src="js/pop.js"></script>
</html>
