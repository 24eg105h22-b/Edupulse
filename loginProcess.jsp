<%@ include file="db.jsp" %>

<%
String email=request.getParameter("email");
String password=request.getParameter("password");
String role=request.getParameter("role");

if(role.equals("student")){

PreparedStatement ps=con.prepareStatement(
"select * from students where email=? and password=?");

ps.setString(1,email);
ps.setString(2,password);

ResultSet rs=ps.executeQuery();

if(rs.next())
response.sendRedirect("studentDashboard.jsp");
else
out.println("Invalid login");

}

else{

PreparedStatement ps=con.prepareStatement(
"select * from professors where email=? and password=?");

ps.setString(1,email);
ps.setString(2,password);

ResultSet rs=ps.executeQuery();

if(rs.next())
response.sendRedirect("profDashboard.jsp");
else
out.println("Invalid login");

}
%>