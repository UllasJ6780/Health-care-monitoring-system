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
    <script src="js/jquery-1.10.2.js"></script>
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
        
        $(document).ready(function(){
        	$("#update").click(function(){
        		var uid = $("#uid").val();
        		var sal = $("#sal").val();
        		var type = $("#type").val();
        		
        		$.ajax({url:"updatesalary?uid="+uid+"&sal="+sal+"&type="+type,success:function(data,responseText){
        			alert("Salary Updated Successfylly !!!");
        			window.location.href="reports.jsp";
        		}});
        	});
        });
    </script>
    <style>
    table{
    	margin-left:100px;
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
                        
                        <li><a href="admin.jsp">Home</a></li>
                      
                        <li><a href="index.html">Logout</a></li>
                                                    
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->
<%
	ResultSet res = data.getdocutor();
%>
    <section id="about-us">
    <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">BGSIT Hospital,BG Nagara</font></strong></p>
    <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">Doctor Details </font></strong></p>
  
  <p align="center">&nbsp;</p>

  <p>&nbsp;</p>
  
  <table>
  <tr>
  <td>Update Salary</td></tr>
  <tr>
  <td>Id</td>
  <td><input type="text" name="id" id="uid"/>
  </td>
  </tr>
   <tr>
  <td>Salary</td>
  <td><input type="text" name="salray" id="sal"/>
  </td>
  </tr>
  <tr>
  <td>UserType</td>
  <td>
  <select name="type" id="type">
  <option value="employee">Employee</option>
  <option value="Docotor">Doctor</option>
  
  </select>
  </td>
  </tr>
  <tr>
  <td><input type="submit" value="Update" id="update"/>
  </td>
  </tr>
  </table>
  
  

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