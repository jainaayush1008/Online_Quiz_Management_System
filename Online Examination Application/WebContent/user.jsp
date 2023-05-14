
<!DOCTYPE html>
<html>
<head>
<LINK rel="stylesheet" type="text/css" href="login.css"></LINK>
<title>Student Enhancement</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
 <%@include file="head.jsp"%>
<body>
	<DIV class="container">
	<h1>USER LOGIN</h1>
		<form action="userlogin" method="post">
		<DIV class="form-input">
			<INPUT type="text" name="user" placeholder="Enter Username" class="get"/>
		</DIV><br>
		<DIV class="form-input1">
			<INPUT type="password" name="pass" placeholder="Enter Password" class="get"/>
		</DIV><br>
		<DIV>
			<INPUT type="submit" name="submit" value="LOGIN" class="btn-login" /><br />
		</DIV>
		<DIV>
			<A href="forgotpass.jsp" class="a1"><b>Forget Password?</b> </A>
			<A href="signup.jsp" class="a2"><b>New User Signup Hare</b></A>
		</DIV>
		</form>
	</DIV>
	
</body>
</html>
<%@include file="foot.jsp"%>