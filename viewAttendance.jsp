<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Attendance</header>

<div class="container">

<div class="card">

<h3>Attendance Details</h3>

<%

Statement st=con.createStatement();

ResultSet rs=st.executeQuery(
"select course_name,attendance from attendance join courses on attendance.course_id=courses.id");

while(rs.next()){

out.println(rs.getString(1)+" : "+rs.getInt(2)+"%<br>");

}

%>

<a href="studentDashboard.jsp">
<button>Back</button>
</a>

</div>
</div>

</body>
</html>