<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Manage Courses</header>

<div class="container">

<div class="card">

<form method="post">

<input type="text" name="course" placeholder="Course Name">

<button type="submit" name="add">Add Course</button>

</form>

<%

if(request.getParameter("add")!=null){

String course=request.getParameter("course");

PreparedStatement ps=con.prepareStatement(
"insert into courses(course_name) values(?)");

ps.setString(1,course);

ps.executeUpdate();

out.println("Course Added Successfully");

}

%>

<a href="profDashboard.jsp">
<button>Back</button>
</a>

</div>
</div>

</body>
</html>