<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
<body background="im.jpg">
<b>
    <a href="modifyc.jsp">HOME</a><br>
    <a href="deletecques.jsp">Delete more questions</a>
<% 
   int c=Integer.parseInt(request.getParameter("delete"));
   
   Connection conn=Connect_File.getConnection();
   String query="delete from c_questions where SNO=?";
   PreparedStatement ps=conn.prepareStatement(query);
   ps.setInt(1,c);
   ps.executeUpdate();
   conn.close();
   
%>   

<br><br>
"Question deleted!!"<br><br><br><br><br><br><br><br><br>
<%@include file="foot.jsp" %>
</b>
</body> 
</html>