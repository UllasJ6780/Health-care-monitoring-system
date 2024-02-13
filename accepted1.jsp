

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
<%! String a = "Accepted !!!";%>
<%
String id = (String)session.getAttribute("id");
int id1 = Integer.parseInt(id);
System.out.println(id);
int id2;
Statement st = null;

try{
    st = DB.control();
    ResultSet rs = st.executeQuery("select * from patient_req where u_from="+id1+"");
    while(rs.next()){
        if(a.equals(rs.getString(3))){
    
        
    id2=rs.getInt(2);
    ResultSet res = st.executeQuery("select * from patient where id="+id2+"");
    while(res.next()){
    
    

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
                        
                       
                        <li><a href="patient1.jsp">Home</a></li>
                        <li class="active"><a href="accepted1.jsp">Accepted Requests</a></li>
                         <li><a href="index.html">Logout</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us" >
        <form name="form1"  method="post" action="accepted2.jsp">
            <input type="hidden" value='<%=id2%>' name="rid"/>
        
        <center><table width="381" border="0" align="center" cellpadding="2" cellspacing="2">
    
           
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Name : <%=res.getString(2)%></strong></em></font></div></td></tr>
           
    <tr> 
      <td height="31"> <div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong> 
          <input type="submit" name="Accept" value="    View Profile    " id="acc"/>
          </strong></em></font></div></td>
      <td>
    </tr>
            
        </table></center>
        </form>
            
                
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
  <p>&nbsp;</p>
  <p>&nbsp;</p>
          
          
        </section><!--/about-us-->
       
        <%
               }

}
else{%>
               <h1 style="color:red;" align="center">Still not Accepted !!!</h1>
               <%
                             }
        }
               
}
       
        catch(Exception e){
    System.out.println(e);
}
%>
    

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