<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Marks</header>

<div class="container">

<div class="card">

<%

Statement st=con.createStatement();
ResultSet rs=st.executeQuery(
"select course_name,marks from marks join courses on marks.course_id=courses.id");

while(rs.next()){
out.println(rs.getString(1)+" : "+rs.getInt(2)+"<br>");
}

%>

<a href="studentDashboard.jsp">
<button>Back</button>
</a>

</div>

</div>

</body>
</html>