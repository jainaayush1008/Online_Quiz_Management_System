
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>

<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
<head>
<style type="text/css">
.container {
	width: 600px;
	height: 400px;
    background-color:rgb(20, 15, 91);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: -60px;
}

.signout {
	color:white;
    background:rgb(20, 15, 91);
	padding-top: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 5px;
	border-radius: 4px;
	border: none;
	border-bottom: 4px solid #27aE60;
	cursor: pointer;
	height: 40px;
	width: 100px;
	margin-left: 1100px;
	margin-top: -30px;
}
.text{
	color:white;
	font-size:1.2em;
	padding-left:100px;
}
h1
{
color:white;

}
.sign {
   
	color:white;
	background: #505369;
	 padding-top: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 5px;
	border-radius: 4px;
	border: none;
	border-bottom: 4px solid white;
	cursor: pointer;
	height: 40px;
	width: 220px;
	margin-left:180px;
	
	
}
</style>
</head>

<body background="im.jpg">
    <form action="userlogout">
		<input type="submit" class="signout" value="Sign Out"><br>
		<br>
	</form>
	<div class="container">
		<h1 style="text-align: center;">Java language test:</h1>
		<h1 style="text-align: center;">INSTRUCTIONS:</h1>
		<b class="text">1. The test contains 10 questions.            </b><br>
		<b class="text">2. Each question is of 1 mark.</b><br> 
		<b class="text">3. Only one answer is correct for each question.</b><br>
		<b class="text">4. The test is allowed only once.</b><br><br><br><br>
		<a href="checkjava.jsp"><input type="button" value="Start" class="sign"></a>
	</div>    <br>
<%@include file="foot.jsp" %>
</body>
</html>
