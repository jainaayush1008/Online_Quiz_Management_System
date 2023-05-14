<!DOCTYPE html>
<%@include file="head.jsp" %>
<html>
    <head>
        <title>Online Evaluation</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  
   <style type="text/css">
.container {
	width: 300px;
	height: 300px;
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
h1
{
    margin-top: 0;
    color: white;
}
</style>
   
  
    </head>
    <body>
    <div class="container">
    <h1>C Programming</h1><br>
    <a href="updatecques.jsp"><input type="button" value="Add C Question" class="signout"></a><br><br>
    <a href="deletecques.jsp"><input type="button" value="Delete C Question" class="signout"></a><br><br>
    <a href="viewdetailscuser.jsp"><input type="button" value="View C User Details" class="signout"></a>
    </div>
    
   
</body>
<%@include file="foot.jsp" %>
</html>