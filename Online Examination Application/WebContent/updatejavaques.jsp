<%@include file="head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Java Module</title>
        <style type="text/css">
.container {
	width: 950px;
	height: 540px;
	padding-left:80px;
	padding-top:40px;
	background-color: rgb(20, 15, 91);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: 18px;
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
.text{
	color:white;
	font-style:oblique;
	font-size:1.2em;
	
}
h1
{
    color: white;
   margin-left: 50px;

}
</style>

        
    </head>
    <body > 
        
            <div class="container">
            <h1>ADD QUESTIONS</h1>
     <form action="ujq.jsp" method="post">
    <b class="text">S.No.-</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" name="snumber"><br>
	<br> 
    <b class="text">Question</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" size="100" style="height: 100px"  name="question"><br>
	<br>    
	<b class="text">Option a)</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" size="50" name="opt1"><br>   
	<br>
    <b class="text">Option b)</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" size="50" name="opt2"><br>   
	<br>
    <b class="text">Option c)</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" size="50" name="opt3"><br>   
	<br>
    <b class="text">Option d)</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" size="50" name="opt4"><br>   
	<br>
    <b class="text">Correct Answer-</b>
        <input type="text" size="50" name="correct_opt"><br>   
	<br>
	<input type="submit" value="Update" class="signout"  style="margin-left:200px;"> <a href="viewjavaquestions.jsp"><input type="button" value="View Questions" class="signout"></a>
	<a href="deletejavaques.jsp"><input type="button" value="DELETE QUESTIONS" class="signout"></a>
	<br> 
	</form>          
           </div>
    </body>
</html>
<%@include file="foot.jsp" %>