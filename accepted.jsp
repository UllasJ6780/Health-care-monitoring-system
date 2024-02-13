

<%@page import="model.DB"%>
<%@page import = "java.sql.*" %>
<%@ page  import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>patient | Health Record</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <script src="jquery1.min"></script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    
</head><!--/head-->
<%! String a = "Accepted !!!";String r = "Not Now !!!";%>
<%
String acc = request.getParameter("id").trim();
String id1 = request.getParameter("fid");
String tid = request.getParameter("tid");
int id = Integer.parseInt(id1);
int id2 = Integer.parseInt(tid);

if(acc.equals("Accept")){
    Statement st = null;
    try{
        st = DB.control();
        st.executeUpdate("update patient_req set request='"+a+"' where u_from="+id+"");
        st.executeUpdate("update patient_req set request='"+a+"' where u_from="+id2+"");
        
    }
    catch(Exception e){
        System.out.println(e);
    }
}
else{
    Statement st = null;
    try{
        st = DB.control();
        st.executeUpdate("update patient_req set request='"+r+"' where u_from="+id+"");
        
    }
    catch(Exception e){
        System.out.println(e);
    }
}
%>
    

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
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search"/>
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
                        
                       
                        <li><a href="requests.jsp">Requests</a></li>
                        <li><a href="accepted1.jsp">Accepted Requests</a></li>
                         <li><a href="index.html">Logout</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us" >
        
        <table width="381" border="0" align="center" cellpadding="2" cellspacing="2">
    
           
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Name :</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong></strong></em></font></td><td><img src='images\\photos\\patient\\' width="100px" height="100px"/></td></tr>
            
        </table>
            
            
                
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
  <p>&nbsp;</p>
  <p>&nbsp;</p>
          
          
        </section><!--/about-us-->
       
    
    

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