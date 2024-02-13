/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.data;

/**
 *
 * @author user
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id1 = request.getParameter("userid");
        //int id = Integer.parseInt(id1);
        String psw = request.getParameter("password");
        String type = request.getParameter("type");
        int check= data.login(id1,psw,type);
        try {
            if(type.equals("Admin")){
           if(check==1){
               
               response.sendRedirect("admin.jsp");
           }
           else{
               response.sendRedirect("failure.jsp");
           } 
            }
            else if(type.equals("Doctor")){
                if(check==1){
               HttpSession sess = request.getSession();
               sess.setAttribute("id", psw);
               response.sendRedirect("doctor1.jsp");
           }
           else{
               response.sendRedirect("failure.jsp");
           }
            }
            else if(type.equals("Patient")){
                if(check==1){
               HttpSession sess = request.getSession();
               sess.setAttribute("id", psw);
               response.sendRedirect("patient1.jsp");
           }
           else{
               response.sendRedirect("failure.jsp");
           }
            }
            else if(type.equals("Employee")){
                if(check==1){
               HttpSession sess = request.getSession();
               sess.setAttribute("id", psw);
               response.sendRedirect("employee1.jsp");
           }
           else{
               response.sendRedirect("failure.jsp");
           }
            }
        }finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
