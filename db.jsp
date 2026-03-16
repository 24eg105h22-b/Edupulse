<%@ page import="java.sql.*" %>

<%
Connection con = null;

try{
    Class.forName("com.mysql.cj.jdbc.Driver");

    con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/edupulse","root","password");

}
catch(Exception e){
    out.println(e);
}
%>