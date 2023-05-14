<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>delete C questions</title>
<style type="text/css">
.container {
	width: 950px;
	height: 1800px;
	padding-left:80px;
	padding-top:40px;
	background-color: rgb(20, 15, 91);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: 25px;
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
	width: 150px;
	margin-left: 210px;
	
}
.text{
	color:white;
	font-size:1.2em;
	
}
</style>


</head>
<body>


<% 
    Connection conn=Connect_File.getConnection();
    String query="select * from c_questions";
    PreparedStatement ps=conn.prepareStatement(query);
    ResultSet rs=ps.executeQuery();
    %>
    <div class="container">
    <h2 style="color:white;text-align: center;"> Delete C questions:</h2>
    <%
    while (rs.next()){
    String sno=rs.getString("sno");
    String ques=rs.getString("question");
    String a=rs.getString("opt1");
    String b=rs.getString("opt2");
    String c=rs.getString("opt3");
    String d=rs.getString("opt4"); 
    String correct=rs.getString("correct_opt");
%>
    
    <b class="text">Question <%=sno%>: <%=ques%></b><br>
    <b class="text">a) <%=a%></b><br>
    <b class="text">b) <%=b%></b><br>
    <b class="text">c) <%=c%></b><br>
    <b class="text">d) <%=d%></b><br>
    <b class="text">Correct Choice: <%=correct%></b><br><br>
 
    <%
    }
    conn.close();  
    %>
     <fieldset style="width: 600px; margin-left: 150px;">
   
    <form action="dcq.jsp" method="post"><br>
    <b class="text">Enter the question number you wish to delete:</b>              
	 &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="delete"><br>   
	<br>			
	<input type="submit" value="Delete" class="signout">
        <br><br>
     </form>
            </fieldset>
	 </div>
<%@include file="foot.jsp" %>
</body>
</html>