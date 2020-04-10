<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/snack", "root", "");
    Statement sn1 = con1.createStatement();
    if(request.getParameter("i") != null ){
        String p = request.getParameter("i");
        String sql = "delete from produsen where id_produsen = '"+p+"'" ;
        
        try{
            sn1.executeUpdate(sql);
            response.sendRedirect("tbprodusen.jsp");
        }catch(Exception e){
            e.printStackTrace();}
    }
    
%>