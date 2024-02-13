package controller;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.DocumentException;

import model.bean;


/**
 * Servlet implementation class finalprocess
 */
@WebServlet("/finalprocess")
public class finalprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public finalprocess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession ses  = request.getSession();
		ResultSet res =(ResultSet)ses.getAttribute("res");
		String bedcharge = request.getParameter("bch");
		String medicine = request.getParameter("md");
		String consult = request.getParameter("col");
		String total = request.getParameter("tot");
		
		Statement st = null;
		Connection con = null;
		bean b = new bean();
		try {
			b.setuname(res.getString(2));
			b.setdob(res.getString(3));
			b.setaddress(res.getString(4));
			b.setcontact(res.getString(5));
			b.setbcharge(bedcharge);
			b.setmcharge(medicine);
			b.settotal(total);
		
			try {
				pdfgenerate.disp(b);
			} catch (DocumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try{		
			
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/health","root","root");
			st = con.createStatement();
			st.executeUpdate("insert into billing values('"+res.getString(1)+"','"+res.getString(2)+"','"+res.getString(3)+"','"+res.getString(4)+"','"+res.getString(5)+"','"+res.getString(6)+"','"+res.getString(7)+"','"+res.getString(8)+"','"+res.getString(9)+"','"+bedcharge+"','"+medicine+"','"+consult+"','"+total+"')");
	
			/*st.executeUpdate("delete from patient where id='"+res.getString(1)+"'");*/
			response.sendRedirect("billing.jsp");
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

}
