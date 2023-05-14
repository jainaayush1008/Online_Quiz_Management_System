<!DOCTYPE html>
<%@page import="db.Connect_File"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>
<%@page import="java.util.ArrayList, beans.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
<%@include file="head.jsp" %>
 <title>C Quiz</title>
 
 <style type="text/css">
.signout{
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
h1
{
color:navy;
}
.btn
{
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
margin-right:30px;
}

</style>
 
 
 </head>
    <body>
   
    <form action="userlogout">
    <a href="choice.jsp"><input type="button" value="Home" class="btn"></a>
    <a href="viewcresult.jsp"><input type="button" value="View Result" class="btn"> </a>
	<input type="submit" class="signout" value="Sign Out"><br><br>
    </form>
 <%
   String s=(String)session.getAttribute("email");
    Connection conn=Connect_File.getConnection();
    String query2="select * from c_answers where email=?";
    PreparedStatement ps=conn.prepareStatement(query2);
    PreparedStatement ps2=conn.prepareStatement("select * from c_questions");
    ps.setString(1,s);
    ResultSet rs=ps.executeQuery();
    
    if ( rs.next()){
        out.println("<h1>Not allowed. You have already given the test.</h1>");
        conn.close();
    }
else{
	
	ResultSet rs2=ps2.executeQuery();
	java.util.ArrayList list=new java.util.ArrayList(); 
	while(rs2.next()) {
		Question q=new Question();
		q.setSno(rs2.getInt(1));
		q.setQuestion(rs2.getString(2));
		q.setAns1(rs2.getString(3));
		q.setAns2(rs2.getString(4));
		q.setAns3(rs2.getString(5));
		q.setAns4(rs2.getString(6));
		q.setCorrect(rs2.getString(7));
		list.add(q);
	}
	session.setAttribute("dbdata",list);
	conn.close(); 
	%>
	 <jsp:forward page="cques.jsp"></jsp:forward>
	<%
	}
    %>
   
  
    <br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="foot.jsp" %>
</body>
</html>