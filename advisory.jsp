<%@ include file="db.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>

<header>Academic Advice</header>

<div class="container">

<div class="card">

<%

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select marks from marks");

while(rs.next()){

int m=rs.getInt(1);

if(m<40)
out.println("Focus more on this subject<br>");

else if(m<70)
out.println("Average performance<br>");

else
out.println("Good performance<br>");

}

%>

<a href="studentDashboard.jsp">
<button>Back</button>
</a>

</div>

</div>

</body>
</html>