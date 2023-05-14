<!DOCTYPE html>
<%@include file="head.jsp" %>
<html>
 <head>
   <title>Spark Online Assessment</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
   
   <style type="text/css">
.container {
	width: 290px;
	height: 250px;
	padding-top:70px;
	padding-left:120px;
	background-color: rgb(20, 15, 91);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: 50px;
}

.signout {
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
	
	
}

</style>
   
   
 </head>
    <body>
    
    <div class="container">
    <a href="updatejavaques.jsp"><input type="button" value="Add Java Question" class="signout"></a><br><br>
    <a href="deletejavaques.jsp"><input type="button" value="Delete Java Question" class="signout"></a><br><br>
    <a href="viewdetailsjavauser.jsp"><input type="button" value="View Java User Details" class="signout"></a>
    </div>
    
</body><br>
<%@include file="foot.jsp" %>
</html>