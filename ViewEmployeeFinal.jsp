<%@page import="model.data"%>
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
</head><!--/head-->

<body onload="window.print()">   
<%
	ResultSet res = data.getdocutor2();
%>
    <section id="about-us">
    <p align="center"><strong><font color="#003399" size="5" face="Times New Roman"><img src="images/logo.jpg" ">SPT Hospital,Batawadi,Tumkur</font></strong></p>
    <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">Employee Details </font></strong></p>
  
  <p align="center">&nbsp;</p>

  <p>&nbsp;</p>
    <center>
<table border="2">
<tr style="font-weight:bold;color:red">
<td>Employee_Id</td>
<td>Name</td>

<td>DOB</td>
<td>Address</td>
<td>Contact</td>
<td>Email</td>
<td>Gender</td>
<td>Designation</td>
<td>Salary</td>
<td>Duty_Hours</td>
<%
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
</tr>
<%} %>
</table>
<br/>
<button type="button" onclick="window.print()">Print</button>
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