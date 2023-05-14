
<%@page import="db.Connect_File"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>

<%@page import="java.sql.*"%>

<html>
    <body background="im.jpg">
        <%@include file="head.jsp" %>

<% 
    int sno=(Integer)session.getAttribute("sno");
    String atmt_ans=request.getParameter("myradio");
    String correct=request.getParameter("correct");
    
    Connection conn=Connect_File.getConnection();
    String query ="insert into java_answers values(?,?,?,?)";
    String e="";
    PreparedStatement st=conn.prepareStatement(query);
    if(((String)request.getParameter("myradio"))==null){
        e="Not Attempted";
        st.setInt(1,sno);
        st.setString(2,(String)session.getAttribute("email"));
        st.setString(3,e);
        st.setString(4,correct);  
    }
    else {
        e=atmt_ans;
    st.setInt(1,sno);
    st.setString(2,(String)session.getAttribute("email"));
    st.setString(3,e);
    st.setString(4,correct);
    }
    st.executeUpdate();
  
  if(sno==10) {
	  request.getRequestDispatcher("calculatejavaresult.jsp").forward(request,response);
  	}
     conn.close(); 
    %>
     <jsp:forward page="javaques.jsp"/>
     <%@include file="foot.jsp" %>
        
    </body>
</html>