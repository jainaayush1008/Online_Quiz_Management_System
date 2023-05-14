<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
    <body background="im.jpg">
            <a href="modifyjava.jsp">HOME</a>
             <a href="deletejavaques.jsp">Delete more questions</a>
<% 
   int del=(Integer)(session.getAttribute("delete"));
   Connection conn=Connect_File.getConnection();
   String query="delete from java_questions where SNO=?";
   PreparedStatement ps=conn.prepareStatement(query);
   ps.setInt(1,del);
   ps.executeUpdate();
   conn.close();
%>   

<br><br>
Question deleted!!<br><br><br><br><br><br><br><br><br>
<%@include file="foot.jsp" %>
      
</body> 
</html>