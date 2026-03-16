<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Student Registration</header>

<div class="container">
<div class="card">

<form method="post">

<input type="text" name="name" placeholder="Name" required>
<input type="email" name="email" placeholder="Email" required>
<input type="password" name="password" placeholder="Password" required>

<button type="submit" name="register">Register</button>

</form>

<%

if(request.getParameter("register")!=null){

String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");

PreparedStatement ps=con.prepareStatement(
"insert into students(name,email,password) values(?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);

ps.executeUpdate();

response.sendRedirect("login.jsp");

}

%>

</div>
</div>

</body>
</html>