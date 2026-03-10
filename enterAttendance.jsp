<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Enter Attendance</header>

<div class="container">

<div class="card">

<form method="post">

<input type="number" name="sid" placeholder="Student ID">

<input type="number" name="cid" placeholder="Course ID">

<input type="number" name="att" placeholder="Attendance %">

<button type="submit" name="save">Save</button>

</form>

<%

if(request.getParameter("save")!=null){

int sid=Integer.parseInt(request.getParameter("sid"));
int cid=Integer.parseInt(request.getParameter("cid"));
int att=Integer.parseInt(request.getParameter("att"));

PreparedStatement ps=con.prepareStatement(
"insert into attendance(student_id,course_id,attendance) values(?,?,?)");

ps.setInt(1,sid);
ps.setInt(2,cid);
ps.setInt(3,att);

ps.executeUpdate();

response.sendRedirect("success.jsp");

}

%>

</div>
</div>

</body>
</html>