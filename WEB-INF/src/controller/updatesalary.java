package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import model.DB;
@WebServlet("/updatesalary")
public class updatesalary extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uid = request.getParameter("uid");
		String sal = request.getParameter("sal");
		String type = request.getParameter("type");
		Statement st = null;
		try{
			st = DB.control();
			if(type.equalsIgnoreCase("Docotor")){
				st.executeUpdate("update doctor set salary='"+sal+"' where id='"+uid+"'");
			}
			else{
				st.executeUpdate("update employee set salary='"+sal+"' where id='"+uid+"'");
			}
			
			
			
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

}
