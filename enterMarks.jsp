<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Enter Marks</header>

<div class="container">

<div class="card">

<form method="post">

<input type="number" name="sid" placeholder="Student ID">

<input type="number" name="cid" placeholder="Course ID">

<input type="number" name="marks" placeholder="Marks">

<button type="submit" name="save">Save</button>

</form>

<%

if(request.getParameter("save")!=null){

int sid=Integer.parseInt(request.getParameter("sid"));
int cid=Integer.parseInt(request.getParameter("cid"));
int marks=Integer.parseInt(request.getParameter("marks"));

PreparedStatement ps=con.prepareStatement(
"insert into marks(student_id,course_id,marks) values(?,?,?)");

ps.setInt(1,sid);
ps.setInt(2,cid);
ps.setInt(3,marks);

ps.executeUpdate();

response.sendRedirect("success.jsp");

}

%>

</div>
</div>

</body>
</html>