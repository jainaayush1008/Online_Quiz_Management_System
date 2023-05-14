<!DOCTYPE html>
<html>
<head>
<title>TODO supply a title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="head.jsp" %>
<LINK rel="stylesheet" type="text/css" href="signup.css"></LINK>
</head>

<body>

<DIV class="container1">
		<img alt="signup" src="resetpass.png" height="80px;" width="200px;">
		<form action="data_save.jsp" method="post">
			<TABLE>
				<TR>
					<TD><p class="pera">Username :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="text" name="user" placeholder="Enter Username" class="get">
						</DIV>
					</TD>
				</TR>
				<TR><TD><p class="pera">Password :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="password" name="pass" placeholder="Enter Password">
						</DIV>
					</TD>
				</TR>
				<TR><TD><p class="pera">Conform Password :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="password" name="pass1" placeholder="Conform Password">
						</DIV>
					</TD>
				</TR>
				<TR><TD><p class="pera">Email :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="text" name="email" placeholder="Enter Email Account">
						</DIV>
					</TD>
				</TR>
				<TR><TD colspan="2">
						<INPUT type="submit" name="submit" value="Signup" class="btn-signup">
					</TD>
				</TR>
			</TABLE>
		</form>
	</DIV>	
</body>
</html>
<%@ include file="foot.jsp"%>