<%-- 
    Document   : doctor2
    Created on : Oct 7, 2015, 12:38:31 PM
    Author     : user
--%>

<%@page import="model.DB"%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id1 = request.getParameter("id");
        System.out.println(id1);
        int id = Integer.parseInt(id1);
        Statement st = null;
        try{
            st = DB.control();
            ResultSet rs = st.executeQuery("select * from patient where id = "+id+"");
            rs.next();
        
        %>
        <table>
        <tr>
        <td>  <img src='images/photos/patient/<%=rs.getString(13)%>' width="200px" height="200px" style="border:4px solid purple;border-radius:100px;float:left"/></td>
        <td><br/>
        </td>
         </tr>
        </table>
      
    
       <br>
       <br>
        <table  width="381" border="2" align="center" cellpadding="2" cellspacing="2" style="float:left;">
       
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>ID</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getInt(1)%></strong></em></font></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Name</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(2)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>DOB</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(3)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Address</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(4)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Contact</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(5)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Email</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(6)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Gender</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(7)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Disease</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(8)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Consulted Doctor</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(9)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Prescribed Medicine</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(10)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Current Condition</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(11)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Duration</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(12)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>CurrentReport</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(14)%></strong></em></font></td></tr>
        </table>
        &nbsp;  &nbsp;  &nbsp;  &nbsp;
        <table style="float:left;margin-left:35px">
        <tr>
        <td>   Scanning Reports</td>
      
         </tr>
          <tr>
        <td>       <img src='images/photos/patient/<%=rs.getString(17)%>' width="200px" height="200px"/></td>
      
         </tr>
        </table>
    
                <%
                               }
                               catch(Exception e){
                                   System.out.println(e);
                                 }
                %>
    </body>
</html>
