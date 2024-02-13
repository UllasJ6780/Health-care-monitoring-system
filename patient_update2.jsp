<%-- 
    Document   : patient_update2
    Created on : Oct 7, 2015, 2:40:50 PM
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
        function myfunction(){
            alert("patient Updated Successfully !!!");
        }
    </script>
    </head>
    <body>
         <%
         String id1 = request.getParameter("id");
        int id = Integer.parseInt(id1);
        Statement st = null;
       
        st = DB.control();
        ResultSet rs = st.executeQuery("select * from patient where id="+id+"");
        rs.next();
        
%>
        <form name="form1"  method="post" action="patient_update" onSubmit="return valid(this)" >
  <p align="center"><strong><font color="#003399" size="7" face="Monotype Corsiva"> Update Patient </font></strong></p>
  
  <p align="center">&nbsp;</p>
  <input name="id" type="hidden" id="id" value='<%= rs.getInt(1)%>'/>
  <table width="381" border="0" align="center" cellpadding="2" cellspacing="4">
      <tr>
           <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong></strong></em></font></div></td>
      
          <td rowspan=""><img src='images/photos/patient/<%=rs.getString(13)%>' width="200px" height="200px"/></td>
      </tr>
  
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Name</strong></em></font></div></td>
      <td><font size="5"> 
        <input name="name" type="name" id="name" value='<%= rs.getString(2)%>'/>
        </font></td>
    </tr>
     <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Date of Birth</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="dob" type="dob" id="dob" value='<%= rs.getString(3)%>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Address</strong></em></font></div></td>
       <td><font size="5"> 
        <textarea name="adrs" cols="15" rows="6"><%= rs.getString(4)%></textarea>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Contact</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="con" type="con" id="con" value='<%= rs.getString(5)%>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Email</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="mail" type="mail" id="mail" value='<%= rs.getString(6)%>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Gender</strong></em></font></div></td>
       <td><font size="5"> 
           <input name="gender" type="text" value='<%= rs.getString(7)%>'/>
           
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Decease</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="dec" type="dec" id="dec" value='<%= rs.getString(8)%>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Consulted Doctor</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="cod" type="cod" id="cod" value='<%= rs.getString(9)%>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Prescribed Medicine</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="prm" type="prm" id="prm" value='<%= rs.getString(10)%>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Current Condition</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="cuc" type="cuc" id="cuc" value='<%= rs.getString(11)%>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Duration</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="dur" type="dur" id="dur" value='<%= rs.getString(12)%>'/>
        </font></td>
    </tr>
     <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Previous Result</strong></em></font></div></td>
       <td><font size="5"> 
        <textarea name="old" cols="23" rows="3"><%=rs.getString(18) %></textarea>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>New Result</strong></em></font></div></td>
       <td><font size="5"> 
        <textarea name="pres" cols="23" rows="3"></textarea>
        </font></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="347" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td height="31"> <div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong> 
          <input type="submit" name="Submit" value="    Submit    " onclick="myfunction()"/>
          </strong></em></font></div></td>
      <td><center>
          <font size="5"> 
          <input type="reset" name="Submit2" value="     Reset    "/>
          </font></center></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
    </body>
</html>
