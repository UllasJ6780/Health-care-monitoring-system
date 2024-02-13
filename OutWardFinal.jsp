<%@page import="model.DB"%>
<!DOCTYPE html>
<%@page import ="java.sql.*" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin | Health Record</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
	
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
  <script>
        function myfunction(){
            if((window.document.form1.id.value=="")){
                alert("Please Enter ID !!!");
                return false;
            }
            else{
                return true;
            }
        }
    </script>
    <style>
    
    </style>
</head><!--/head-->

<body onload="window.print()">

<%
String msg =(String) request.getAttribute("msg");
try{
    if(!msg.equals("")){
%>
<center><h2 style="color:red;font-weight: bold"><%=msg%></h2></center>
<%
    }
}
catch(Exception e){
    
}
%>
    <section id="about-us">
       
   <p align="center"><strong><font color="#003399" size="5" face="Times New Roman"><img src="images/logo.jpg" ">SPT Hospital,Batawadi,Tumkur</font></strong></p>
  <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">Out-Ward Patient Details </font></strong></p>
  
  <p align="center">&nbsp;</p>

  <p>&nbsp;</p>
  <center>
  <table border="2" style="font-size:18px">
  <tr style="color:red;font-weight:bold">
  <td>P_Id</td>
  <td>P_Name</td>
    <td>DOB</td>
      <td>Address</td>
        <td>Contact</td>
          <td>Email</td>
            <td>Gender</td>
              <td>Decease</td>
                <td>C_Doctor</td>
                  <td>B_Charge</td>
                    <td>M_Charge</td>
                      <td>Consult_Fee</td>
                        <td>Total</td>
                         
                          </tr>

  <%
	Statement st = null;
	Connection con = null;
	try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/health","root","root");
			st = con.createStatement();
			ResultSet res = st.executeQuery("select *from billing");
			while(res.next()){
    %>
 <tr>
 <td><%=res.getString(1) %></td>
 <td><%=res.getString(2) %></td>
 <td><%=res.getString(3) %></td>
 <td><%=res.getString(4) %></td>
 <td><%=res.getString(5) %></td>
 <td><%=res.getString(6) %></td>
 <td><%=res.getString(7) %></td>
 <td><%=res.getString(8) %></td>
 <td><%=res.getString(9) %></td>
 <td><%=res.getString(10) %></td>
 <td><%=res.getString(11) %></td>
 <td><%=res.getString(12) %></td>
 <td><%=res.getString(13) %></td>
 </tr>
 <%}
 }
 catch(Exception e){
 }
 
  %>
  </table>
  <br/>

 </center>
      

        </section><!--/about-us-->
	
<!--/#footer-->
    

    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $('.carousel').carousel()
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>