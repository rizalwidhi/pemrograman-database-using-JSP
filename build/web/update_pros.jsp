<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/pustaka";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String nama=request.getParameter("nama");
String alamat=request.getParameter("alamat");
String kota=request.getParameter("kota");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update pengarang set id=?,nama=?,alamat=?,kota=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, nama);
ps.setString(3, alamat);
ps.setString(4, kota);
int x = ps.executeUpdate();
if(x > 0)
{
response.sendRedirect("koneksi.jsp");
}
else
{
System.out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>