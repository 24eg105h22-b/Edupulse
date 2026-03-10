<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Student Profile</header>

<div class="container">

<div class="card">

<h3>Registered Students</h3>

<%

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from students");

while(rs.next()){
out.println("ID: "+rs.getInt(1)+"<br>");
out.println("Name: "+rs.getString(2)+"<br>");
out.println("Email: "+rs.getString(3)+"<br><br>");
}

%>

<a href="studentDashboard.jsp">
<button>Back</button>
</a>

</div>
</div>

</body>
</html>