<%@page import="model.DB"%>
<%@page import="model.data" %>
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

<body onload="window.print()">

<%
String pid = request.getParameter("did");
ResultSet res = data.getPatient(pid);
session.setAttribute("res", res);
if(res.next()){
String imgs = res.getString(13);
%>


    <section id="about-us">
       
 <p align="center"><strong><font color="#003399" size="5" face="Times New Roman"><img src="images/logo.jpg" ">SPT Hospital,Batawadi,Tumkur</font></strong></p>
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
   <td><input type="text" name="bch" id="bch"/>
   </td>
   </tr>
   <tr>
   <td>Medicine-Charge</td>
   <td><input type="text" name="md" id="md"/>
   </td>
   </tr>
   <tr>
   <td>Consulted-Fees</td>
   <td><input type="text" name="col" id="col"/>
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
    <button type="button" onclick="window.print()">Print</button>
    </center>
    
 </form>
  <p>&nbsp;</p>
 
  <p>&nbsp;</p>
  <p>&nbsp;</p>

      
<%
}
else{
String msg = "Patient Id Does't Exist !!!";
response.sendRedirect("billing.jsp?msg="+msg);
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