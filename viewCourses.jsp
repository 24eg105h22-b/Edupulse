<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Courses</header>

<div class="container">

<div class="card">

<h3>Available Courses</h3>

<%

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from courses");

while(rs.next()){

out.println("Course ID: "+rs.getInt(1)+"<br>");
out.println("Course Name: "+rs.getString(2)+"<br><br>");

}

%>

<a href="studentDashboard.jsp">
<button>Back</button>
</a>

</div>
</div>

</body>
</html>