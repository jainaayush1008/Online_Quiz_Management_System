

<%@page import="db.Connect_File"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>

<!DOCTYPE html>
<%@page import="java.util.ArrayList, beans.*"%>
<%@page import="java.sql.*"%>
<html>
<%@include file="head.jsp" %>
 <title>C Quiz</title>
    <body background="im.jpg">
    <b>
        <a href="choice.jsp"><input type="button" value="Home" style="color:green;   background:rgb(20, 15, 91);padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:100px;margin-right:30px; "></a>
    <a href="viewjavaresult.jsp"><input type="button" value="View Result" style="color:green;   background:rgb(20, 15, 91);padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:100px; "> </a><br><br><br>
 <%
   String s=(String)session.getAttribute("email");
    Connection conn=Connect_File.getConnection();
    String query2="select * from java_answers where email=?";
    PreparedStatement ps=conn.prepareStatement(query2);
    PreparedStatement ps2=conn.prepareStatement("select * from java_questions order by sno");
    ps.setString(1,s);
    ResultSet rs=ps.executeQuery();
    
    if ( rs.next()){
        out.println("Not allowed. You have already given the test.");
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
	 <jsp:forward page="javaques.jsp"></jsp:forward>
	<%
	}
    %>
   
    </b>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="foot.jsp" %>
</body>
</html>