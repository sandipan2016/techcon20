package com.tech2020;

import java.io.IOException;
import java.io.Printwriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/Logname")
public class Logname extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		private static final long serialVersionUID = 1L;
	       
		  

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		          
		    String n=request.getParameter("username");  
		    String p=request.getParameter("userpass");  
		          
		    if(LoginDao.validate(n, p)){  
		        RequestDispatcher rd=request.getRequestDispatcher("servlet2");  
		        rd.forward(request,response);  
		    }  
		    else{  
		        out.print("Sorry username or password error");  
		        RequestDispatcher rd=request.getRequestDispatcher("login.html");  
		        rd.include(request,response);  
		    }  
		          
		    out.close();  
		    }  
		

	

	}

}
