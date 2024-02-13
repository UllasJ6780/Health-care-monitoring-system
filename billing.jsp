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
                        
                         <li><a href="admin.jsp">Home</a></li>
                         <li><a href="inward.jsp">In-Ward</a></li>
                        <li><a href="outward.jsp">Out-Ward</a></li>
                         
                        <li><a href="index.html">Logout</a></li>
                                                    
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->
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
       
  <form name="form1"  method="post" action="patientbill.jsp" onSubmit="return valid(this)"  >
  <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">Patient Billing </font></strong></p>
  
  <p align="center">&nbsp;</p>
  <table width="381" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td width="165"><div align="center"><font size="4" face="Times New Roman"><em><strong>Patient-ID</strong></em></font></div></td>
      <td width="192"><font size="5"> 
        <input  type="text"  name="did" id="id"/>
        </font></td>
    </tr>
  
  </table>
  <p>&nbsp;</p>
  <%
  	String s = request.getParameter("msg");
  	try{
  			if(!s.equals("")){
  
   %>
   <center><h3 style="color:red;font-weight:bold"><%=s%></h3></center>
   <%
   }
   }
   catch(Exception e){
   }
    %>
  <table width="347" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td height="31"> <div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong> 
          <input type="submit" name="Submit" value="    Submit    " onclick="return myfunction()" />
          </strong></em></font></div></td>
      
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
      

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