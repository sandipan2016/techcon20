package com.tech2020;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
//@WebServlet("/Register")
public class Register extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String e=request.getParameter("email");  
		String f=request.getParameter("fname");  
		String l=request.getParameter("lname");  
		String c=request.getParameter("phone"); 
		String lo=request.getParameter("logname");
		String p=request.getParameter("pass");
		
		/*  The following code is a dummy check */
		
		if(e==null||e=="")
		{
			out.println("Email  is empty");
		}
		
			          
		try
		{  
		Class.forName("oracle.jdbc.driver.OracleDriver");  
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl11","scott","tiger123");  
		  
		PreparedStatement ps=con.prepareStatement("insert into UserDetail values(?,?,?,?,?,?)");  
		  
		ps.setString(1,e);  
		ps.setString(2,f);  
		ps.setString(3,l);  
		ps.setString(4,c);
		ps.setString(5,lo);  
		ps.setString(6,p);
		          
		int i=ps.executeUpdate(); 
		
		if(i>0)  
		out.print("You are successfully registered...");  
		            
		}
		
		catch (Exception e2)
		{
			System.out.println(e2);
		}  
		          
		out.close();  
		}  
		  
}  


	
