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
        <script>
        		function myfun(){
        			var pid = document.getElementById("pid").value;
        			var btype = document.getElementById("type").value;
        			var nday = document.getElementById("nday").value;
        			var c = document.getElementById("cfee").value;
        			
        			
        			if(btype=="special"){
        			var s = 200*nday;
        			var mytotal = s +c;
        			alert(mytotal);
        			window.location.href="finalprocess.jsp?pid="+pid;
        			
        			}
        			
        		}
        
        </script>
    </head>
    <body>
     <center> <h3>Patient Billing</h3></center>
        <%
        String id1 = request.getParameter("pid");
        
        System.out.println(id1);
        int id = Integer.parseInt(id1);
        Statement st = null;
        try{
            st = DB.control();
            ResultSet rs = st.executeQuery("select * from patient where id = "+id+"");
            rs.next();
        
        %>
        <table  width="381" border="2" align="center" cellpadding="2" cellspacing="2">
          <input type="hidden" name="pid" id="pid" value='<%=rs.getString(1) %>'/>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>ID</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getInt(1)%></strong></em></font></td><td rowspan="5"><img src='images/photos/patient/<%=rs.getString(13)%>' width="200px" height="200px"/></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Name</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(2)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>DOB</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(3)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Address</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(4)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Contact</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(5)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Email</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(6)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Gender</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(7)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Decease</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(8)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Consulted Doctor</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(9)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Prescribed Medicine</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(10)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Current Condition</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(11)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Duration</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(12)%></strong></em></font></td></tr>
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Updated_Prescription</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(14)%></strong></em></font></td></tr>
             <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Bed-Type</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=rs.getString(15)%><input type="hidden" value='<%=rs.getString(15)%>' id="type"/></strong></em></font></td></tr>
        <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>No.Days</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><input type="text" name="nday" id="nday"/></strong></em></font></td></tr>
        <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Consulted-Fee</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><input type="text" name="cfee" id="cfee"/></strong></em></font></td></tr>
         <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Total</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><input type="text" name="total" onclick="myfun()"/></strong></em></font></td></tr>
       <tr><td><button type="button" onclick="window.print()">Print</button>
        </table>
                <%
                               }
                               catch(Exception e){
                                   System.out.println(e);
                                 }
                %>
    </body>
</html>
