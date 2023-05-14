<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
    <body background="im.jpg"><b>
             <a href="modifyjava.jsp">HOME</a><br>
			<a href="updatejavaques.jsp">add more JAVA question</a><br>
			<a href="deletejavaques.jsp">delete JAVA question</a><br>
			<a href="viewjavaquestions.jsp">VIEW JAVA QUESTIONS</a><br><br>
<% 
   String sn=request.getParameter("snumber");
   int sno=Integer.parseInt(sn);
   String q=request.getParameter("question");
   String opt1=request.getParameter("opt1");
   String opt2=request.getParameter("opt2");
   String opt3=request.getParameter("opt3");
   String opt4=request.getParameter("opt4");
   String correct_opt=request.getParameter("correct_opt");
   Connection conn=Connect_File.getConnection();
   String query="insert into java_questions values(?,?,?,?,?,?,?)";
   PreparedStatement ps=conn.prepareStatement(query);
   ps.setInt(1,sno);
   ps.setString(2,q);
   ps.setString(3,opt1);
   ps.setString(4,opt2);
   ps.setString(5,opt3);
   ps.setString(6,opt4);
   ps.setString(7,correct_opt);
   ps.executeUpdate();
   
   out.println("Question Added!"); 
   conn.close();
%>              

<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="foot.jsp" %>
        </b>
</body> 
</html>