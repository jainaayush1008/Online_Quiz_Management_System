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
.timer
{
	position: relative;
	font-family: "Roboto", sans-serif;
	outline: 0;
   	background: #4CAF50;
   	font-size: 36px;
    max-width: 50px;
    text-align: center;
}
</style>
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
ArrayList<Question> list;
int term=0;
int qn=0;
Question q1;
Question q;
Question q2;
ArrayList<Question> ques;
%>

	<%
	if(qn==10) {
		qn=0;   
		}
	if(qn==0)
	{
	
	list=(ArrayList)session.getAttribute("dbdata");
	Random r1= new Random();
	
	//create object of Arraylist ques.................
	
ques= new ArrayList<>();
	for(int i=1;i<=100;i++){
		int indexno=r1.nextInt(list.size());
		
	 q1=(Question)list.get(indexno);
		if(!ques.contains(q1)){
			ques.add(q1);
		}
		if(ques.size()==10){
			break;
		}
		}
	}
	
	if(qn==10) {
	qn=0;   
	}
	%>
	<div class="container">
	<form method="post" action="savec.jsp">
    <b style="font-size:1.2em;color:#00ff80;"><i>
    <%
    q=(Question)ques.get(qn); 
  	 qn++;
  	String cop=q.getCorrect();
  		  	%>
 <script>
 var Timer;
 var totalSeconds;
 function CreateTimer(TimerID, Time) 
 {
     Timer = document.getElementById(TimerID);
     TotalSeconds = Time;
     UpdateTimer()
     window.setTimeout("Tick()", 1000);
 }
 function Tick() 
 {
     TotalSeconds -= 1;
     if(TotalSeconds ==-1)
       {
    	 <%
         session.setAttribute("correct",q.getCorrect() );
         %>
         
     window.location="savec.jsp";
       }
    else
      {
     UpdateTimer()
     window.setTimeout("Tick()", 1000);
      }
 }
 function UpdateTimer() {
     Timer.innerHTML = TotalSeconds;
 }
 </script>
  		  	
<div class="timer">
<div id='timer'></div>
<script type="text/javascript">window.onload = CreateTimer("timer", 10);</script>
</div>
  		  	
  		  	<%	
    out.print("<br>");
    out.println("Question"+q.getSno()+". "+q.getQuestion());
    session.setAttribute("sno",q.getSno());
    session.setAttribute("sno1",ques.size());
    %>
    </i></b>
		<table style="padding-left: 20px;">
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns1()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns1()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns2()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns2()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns3()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns3()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns4()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns4()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="hidden" name="correct" value="<%=q.getCorrect()%>"></td></tr>
    <%
    if(qn==10){
    %>
        <tr><td><input type="submit" value="Submit" style="width:103px;"></td><td><input type="reset" value="Clear"></td></tr>
    <%
     }
    else{
    %>
       <tr><td><input type="submit" value="Next Question"></td><td><input type="reset" value="Clear"></td></tr>
    <%
     }
    %>
         </table>
     </form>
     </div>
     <br><br>
<%@ include file="foot.jsp"%>
</html>
  
            
