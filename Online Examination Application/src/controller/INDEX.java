package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class INDEX {
	 public void service(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        try {
	            RequestDispatcher rd=request.getRequestDispatcher("index.html");
	            rd.forward(request, response);
	            out.println("<!DOCTYPE html>");
	            out.println("<html>");
	            out.println("<head>");
	            out.println("<title>Servlet INDEX</title>");            
	            out.println("</head>");
	            out.println("<body>");
	            out.println("<h1>Servlet INDEX at " + request.getContextPath() + "</h1>");
	            out.println("</body>");
	            out.println("</html>");
	        } finally {
	            out.close();
	        }
	    }

}
