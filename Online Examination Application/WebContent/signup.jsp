
<%@ include file="head.jsp" %>
<!DOCTYPE HTML>
<HEAD>
<TITLE>Signup page</TITLE>
<LINK rel="stylesheet" type="text/css" href="signup.css"></LINK>
</HEAD>
<BODY>
	 <div class="container">
        <h1>USER LOGIN</h1>
            <form action="data_save.jsp" method="post">
                <table>
                    <tr>
                        <td><p class="pera">Username :</p></td>
                        <td>
                            <div class="form-input">
                                <INPUT type="text" name="user" placeholder="Enter Username" class="get">
                                </div>
                        </td>
                    </TR>
                    <TR><TD><p class="pera">Password :</p></TD>
                        <TD>
                            <DIV class="form-input">
                                <INPUT type="password" name="pass" placeholder="Enter Password">
                            </DIV>
                        </TD>
                    </TR>
                    <TR><TD><p class="pera">Confirm Password :</p></TD>
                        <TD>
                            <DIV class="form-input">
                                <INPUT type="password" name="pass1" placeholder="Confirm Password">
                            </DIV>
                        </TD>
                    </TR>
                    <TR><TD><p class="pera">Mobile :</p></TD>
                        <TD>
                            <DIV class="form-input">
                                <INPUT type="number" name="mobile" placeholder="Enter Mobile Number">
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
                    <TR><TD><p class="pera">City Name :</p></TD>
                        <TD>
                            <div class="form-input">
                                <INPUT type="text" name="city" placeholder="Enter Your City">
                                </div>
                        </TD>
                    </TR>
                    <td></td>
                    <tr><td colspan="2">
                            <INPUT type="submit" name="submit" value="Signup" class="btn-signup">
                            <INPUT type="reset" name="clear" value="Clear" class="btn-clear">
                            </td>
                    </tr>
                </table>
            </form>
        </div>	
    
<%@ include file="foot.jsp"%>