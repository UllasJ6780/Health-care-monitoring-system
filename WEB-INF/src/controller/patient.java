/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.oreilly.servlet.MultipartRequest;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.data;

/**
 *
 * @author user
 */
@WebServlet(name = "patient", urlPatterns = {"/patient"})
public class patient extends HttpServlet {

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
         String id1 = null;
        String name = null;
        String dob = null;
        String adr = null;
        String cont = null;
        String email = null;
        String gender = null;
        String deac = null;
        String cod = null;
        String cons = null;
        String pris = null;
        String cuc = null;
        String dur = null;
        String imagename[] = new String[2] ;
        String parm = null;
        String btype= null;
        String time= null;
        String pres = "new";
         System.out.println(request.getParameter("img"));
         ServletContext servletContext = getServletContext();
 		String contextPath = servletContext.getRealPath(File.separator);
 		System.out.println(contextPath);
 		
        try {
         
            MultipartRequest multi = new MultipartRequest(request,contextPath+"\\images\\photos\\patient\\",1024*1024*5);
            Enumeration en = multi.getParameterNames();
            Enumeration en1 = multi.getFileNames();
            while(en.hasMoreElements()){
                parm=(String) en.nextElement();
                if(parm.equals("id")){
                    id1 = multi.getParameter(parm);
                }
                if(parm.equals("name")){
                    name = multi.getParameter(parm);
                }
                if(parm.equals("dob")){
                    dob = multi.getParameter(parm);
                }
                if(parm.equals("adrs")){
                    adr = multi.getParameter(parm);
                }
                if(parm.equals("con")){
                    cont = multi.getParameter(parm);
                }
                if(parm.equals("mail")){
                    email = multi.getParameter(parm);
                }
                if(parm.equals("gender")){
                    gender = multi.getParameter(parm);
                }
                if(parm.equals("dec")){
                    deac = multi.getParameter(parm);
                }
                if(parm.equals("cod")){
                    cod = multi.getParameter(parm);
                }
                if(parm.equals("cons")){
                    cons = multi.getParameter(parm);
                }
                if(parm.equals("prm")){
                    pris = multi.getParameter(parm);
                }
                if(parm.equals("cuc")){
                    cuc = multi.getParameter(parm);
                }
                if(parm.equals("dur")){
                    dur = multi.getParameter(parm);
                }
                if(parm.equals("time")){
                    time = multi.getParameter(parm);
                }
                if(parm.equals("btype")){
                    btype = multi.getParameter(parm);
                }
                
            }
            int i = 0;
             while(en1.hasMoreElements()){
                 String myimg =(String) en1.nextElement();
                 imagename[i] = multi.getFile(myimg).getName();
                System.out.println(imagename[i]);
                 i++;
             }
            data.patient(id1,name,dob,adr,cont,email,gender,deac,cod,pris,cuc,dur,imagename,pres,btype,time,cons);
            response.sendRedirect("patient.jsp");
           
        } finally {            
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
