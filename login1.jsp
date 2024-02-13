<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login| Health Record</title>
	
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
    <script language="JavaScript">
function valid()
{
if (window.document.form1.userid.value=="")
	{
		alert("UserID Can't Be Blank.. Pls Enter ");
		window.document.form1.userid.focus();
		return false;
	}
if (window.document.form1.password.value=="")
	{
		alert("Password Can't Be Blank.. Pls Enter ");
		window.document.form1.password.focus();
		return false;
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
                        <li><a href="index.html">Home</a></li>
                       
                         <li class="active"><a href="login1.jsp">Login</a></li>
                       
                         
                        <li><a href="contact-us.html">Contact</a></li> 
                        <li><a href="about-us.html">About Us</a></li>
                                                    
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us">
        <form name="form1"  method="post" action="login" onSubmit="return valid(this)" >
  <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">LOGIN SYSTEM </font></strong></p>
  
  <p align="center">&nbsp;</p>
  <table width="381" border="0" align="center" cellpadding="2" cellspacing="2">
      <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>User_Type</strong></em></font></div></td>
      <td> <font size="5"> 
        <select name="type" size="1" id="type">
          <option value="Admin">admin</option>
          <option value="Doctor">Doctor</option>
          <option value="Patient">Patient</option>
          <option value="Employee">Employee</option>
        </select>
        </font></td>
    </tr>
    <tr> 
      <td width="165"><div align="center"><font size="4" face="Times New Roman"><em><strong>User 
          ID</strong></em></font></div></td>
      <td width="192"><font size="5"> 
        <input name="userid" type="text" id="userid">
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>PassWord</strong></em></font></div></td>
      <td><font size="5"> 
        <input name="password" type="password" id="password">
        </font></td>
    </tr>

  </table>
  <p>&nbsp;</p>
  <table width="347" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td height="31"> <div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong> 
          <input type="submit" name="Submit" value="    Submit    ">
          </strong></em></font></div></td>
      <td><center>
          <font size="5"> 
          <input type="reset" name="Submit2" value="     Reset    ">
          </font></center></td>
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