
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>

<%@ page import="java.util.*, beans.*" %>
<%@ include file="head.jsp"%><br>
<html>
<head>
<style type="text/css">
.container {
	width: 1090px;
	height: 250px;
	margin-top:90px;
    background:rgb(20, 15, 91);
	border-radius: 4px;
	margin: 0 auto;
	padding-top: 80px;
	padding-left: 30px;
	
}
</style>
</head>


<%!
ArrayList list;
int term=0;
int qn=0;
%>

	<%
	if(term++==0)
	{
	list=(ArrayList)session.getAttribute("dbdata");  
	}

	if(qn==10) {
	qn=0;   
	}

	Question q=(Question)list.get(qn++);
	%>
	<div class="container">
	<form method="post" action="savejava.jsp">
    <b style="font-size:1.2em;color:#00ff80;"><i>
    <%
    out.println("Question"+q.getSno()+". "+q.getQuestion());
    session.setAttribute("sno",q.getSno());
    %>
    </i></b>
		<table>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns1()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns1()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns2()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns2()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns3()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns3()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns4()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns4()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="hidden" name="correct" value="<%=q.getCorrect()%>"></td></tr>
    <%
    if(q.getSno()==10){
    %>
        <tr><td><input type="submit" value="Submit" style="width:103px;"></td><td><input type="reset" value="Clear"></td></tr>
    <%
     }
    else{
    %>
       <tr><td><input type="submit" value="Nexe Question"></td><td><input type="reset" value="Clear"></td></tr>
    <%
     }
    %>
         </table>
     </form>
     </div><br><br>
     <%@ include file="foot.jsp"%>
</html>

  
            
