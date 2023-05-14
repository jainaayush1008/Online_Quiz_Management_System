<%@include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title> Spark Online Assessment</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <LINK rel="stylesheet" type="text/css" href="login.css"></LINK>  
    </head>
    <body>
     <DIV class="container">
        <h1>ADMIN LOGIN</h1>
        <br>
		<form action="adminlogin" method="post">
		<DIV class="form-input">
	   <INPUT type="text" name="user_admin" placeholder="Enter Username" class="get"/>
		</DIV><br>
		<DIV class="form-input1">
		<INPUT type="password" name="pass_admin" placeholder="Enter Password" class="get"/>
		</DIV><br>
		<DIV>
			<INPUT type="submit" name="submit" value="LOGIN" class="btn-login" /><br />
		</DIV>
		</form>
	</DIV>
    		
        
       
    </body>

</body>
<%@include file="foot.jsp" %>
</html>