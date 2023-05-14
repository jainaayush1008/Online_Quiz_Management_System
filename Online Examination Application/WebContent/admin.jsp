
<%
	if (session.getAttribute("adminname") == null) {
		response.sendRedirect("admin2.jsp");
	}
%>


<!DOCTYPE html>
<html>
    <head>
        <title>SPARK ASSESSMENT MANAGEMENT SYSTEM</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        
        <style type="text/css">
.container{
	width:800px;
	height:500px;
	text-align:center;
	background-color:rgb(20, 15, 91);
	border-radius:4px;
	margin:0 auto;
	margin-top:-60px;	
	}
.signout{
color:white;
background:rgb(20, 15, 91);
padding-top:5px;
padding-right:5px;
padding-bottom:5px;
padding-left:5px;
border-radius:4px;
border:none;
border-bottom:4px solid #27aE60;
cursor:pointer;
height:40px;
width:100px;
margin-left:1100px;
margin-top:10px
}
.text{
	color:#fff;
	/* font-style:oblique; */
	font-size:40px;
    text-align: center;

	}
</style>
          
    </head>
    <body>
    <%@include file="head.jsp"%>
   
   <form action="userlogout">
	<input type="submit" class="signout" value="Sign Out"><br><br>
    </form><br><br><br>
    <DIV class="container">
    <h1 class="text" style="text-align: center;">modify c and java questions</h1>
    <br><br>
    <a href="modifyc.jsp"><img src="CLogo.jpg" width="300" height="300">
    
     </a>
    <a href="modifyjava.jsp"><img src="javalogo.png" width="300" height="300"></a>
    </DIV>
    
   
</body>
<%@include file="foot.jsp" %>
</html>