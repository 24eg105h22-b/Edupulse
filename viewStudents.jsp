<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Students List</header>

<div class="container">

<div class="card">

<h3>Students</h3>

<%

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from students");

while(rs.next()){

out.println(rs.getInt(1)+" - "+rs.getString(2)+"<br>");

}

%>

<a href="profDashboard.jsp">
<button>Back</button>
</a>

</div>
</div>

</body>
</html>