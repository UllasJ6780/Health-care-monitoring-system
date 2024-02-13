<%@page import="model.DB"%>
<%@page import="model.*" %>
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
     <script src="js/jquery-1.10.2.js"></script>
  <script>
        function myfun(){
        	
       	var s1 = document.getElementById("bch").value;
    	var s2 = document.getElementById("md").value;
    	var s3 = document.getElementById("col").value;
    
    	if((s1.length==0)||(s2.length==0)||(s3.length==0)){
    		
    		alert("Enter All Fields !!!");
    		return false;
    	}
    	else{
    		$.ajax({url:"total.jsp?s1="+s1+"&s2="+s2+"&s3="+s3,success:function(data,responsetext){
    			
    			
    		}});
    	}
       	
        }
        
        function mytotal(){
        	
          	var s1 = document.getElementById("bch").value;
        	var s2 = document.getElementById("md").value;




        	var s3 = document.getElementById("col").value;
        	$.ajax({url: "total.jsp?s1="+s1+"&s2="+s2+"&s3="+s3,success:function(data,responsetext){
    			
    			$("#tot").val(data);
    			}});
    			
    			
        	
        }
    </script>
    <style>
    	img.one{
    	margin-left: 314px;
border: 3px solid;
border-radius: 74px;
border-color: palevioletred;
    	}
    	table{
    		max-width: 100%;
background-color: transparent;
margin-top: -111px;
    	}
    	td{
    		font-size:23px;
    	}
    </style>
</head><!--/head-->

<body>

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +0123 456 70 90</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logo.jpg" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        
                       
                         <li><a href="doctor.jsp">Doctor</a></li>
                        <li><a href="patient.jsp">Patient</a></li>
                         
                        <li><a href="employee.jsp">Employee</a></li>
                        <li class="active"><a href="del_employee.jsp">Delete_Employee</a></li>
                        <li><a href="index.html">Logout</a></li>
                                                    
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->
<%
String pid = request.getParameter("did");
ResultSet res = data.getPatient(pid);
HttpSession session1=request.getSession();
session1.setAttribute("patientid", pid);
session1.setAttribute("res", res);
if(res.next()){
String imgs = res.getString(13);
%>


    <section id="about-us">
       
 <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">SIT Hospital,SIT Main Road,Tumkur</font></strong></p>
    <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">BILL </font></strong></p>
  
   
  
  <form action="finalprocess" method="post">
  <p align="center">&nbsp;</p>
  <img src='images/photos/patient/<%=imgs%>' width="150px" height="150px" class="one" style="margin-left:220px"/>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
  <table width="381" border="2" align="center" cellpadding="2" cellspacing="2" style="font-size:15px">
    <tr style="font-size:30px"> 
     <td>Patient_Id</td>
      <td width="192"><font size="5"> 
        <%=res.getString(1) %>
        </font></td></tr>
        <tr>
          <td>Name</td>
         <td width="192"><font size="5"> 
        <%=res.getString(2) %>
        </font></td></tr>
        <tr>
          <td>DOB</td>
         <td width="192"><font size="5"> 
        <%=res.getString(3) %>
        </font></td></tr>
        
    <tr>
      <tr> 
       <td>Address</td>
      <td width="192"><font size="5"> 
        <%=res.getString(4) %>
        </font></td></tr>
        <tr>
         <td>Contact</td>
         <td width="192"><font size="5"> 
        <%=res.getString(5) %>
        </font></td></tr>
        <tr>
         <td>Email</td>
         <td width="192"><font size="5"> 
        <%=res.getString(6) %>
        </font></td>
    </tr>
    
      <tr> 
      <td>Gender</td>
      <td width="192"><font size="5"> 
        <%=res.getString(7) %>
        </font></td></tr>
        <tr>
         <td>Disease</td>
         <td width="192"><font size="5"> 
        <%=res.getString(8) %>
        </font></td></tr>
        <tr>
         <td>Doctor_Id</td>
         <td width="192"><font size="5"> 
        <%=res.getString(9) %>
        </font></td></tr>
 
       <tr> 
      <td>P_Medicine</td>
      <td width="192"><font size="5"> 
        <%=res.getString(10) %>
        </font></td></tr>
        <tr>
         <td>C_Condition</td>
         <td width="192"><font size="5"> 
        <%=res.getString(11) %>
        </font></td></tr>
        <tr>
         <td>Time</td>
         <td width="192"><font size="5"> 
        <%=res.getString(12) %>
        </font></td>
    </tr>
       <tr> 
      <td>Prescription</td>
   
         <td width="192"><font size="5"> 
        <%=res.getString(14) %>
        </font></td></tr>
        <tr>
         <td>B_Type</td>
         <td width="192"><font size="5"> 
        <%=res.getString(15) %>
        </font></td>
    </tr>
     </table>
     <br>
     <br>
     <br/>
       <br>
     <br>
     <br/>
    <center>
    <table style="font-weight:bold;color:red">
    <tr>
   <td>Bed-Charge</td>
   <td><input type="radio" value="500" name="bch" id="bch" checked="checked"/>
   </td>
  
   <td>Consulted-Fees</td>
   <td><input type="radio" value="500" name="ch" id="col" checked="checked"/>
   </td>
   </tr>
   <tr>
   <td>Medicine-Charge</td>
   <td><input type="text" name="md" id="md"/>
   </td>
   </tr>
  
    <tr>
   <td>Total</td>
   <td><input type="text" name="tot" id="tot" onclick="mytotal()"/>
   </td>
   </tr>
   <tr>
   <td><input type="submit" value="Process" onclick="return myfun()"/></td>
   </tr>
    </table>
    <br/>
    <button type="button" onclick="window.print()">PDF_Generate</button>
    </center>
    
 </form>
 
<form action="pdfgenerate" method="post">
<input type="submit" value="submit"/>
</form>

  <p>&nbsp;</p>
 
  <p>&nbsp;</p>
  <p>&nbsp;</p>

      
<%
}
else{
String msg = "Patient Id Does't Exist !!!";
response.sendRedirect("billing.jsp");
}
 %>
        </section><!--/about-us-->
	
    

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">TechnoSoft</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->
    

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