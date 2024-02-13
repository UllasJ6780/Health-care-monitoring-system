
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
    <style>
        img {
            border:4px solid purple;
           
        }
    </style>
    <script>
        function myfun(id){
          
            var d=document.getElementById(id).value;
            var fid = document.getElementById("fid").value;
            var tid = document.getElementById("tid").value;
            
          
                 
           
         
                 
                       $.ajax({url:"accepted.jsp?id="+d+"&fid="+fid+"&tid="+tid,success:function(data,ResponseText){
              
                 window.location.href="patient1.jsp";
           }});
            
             
              
         
        }
    </script>
</head><!--/head-->
<%! int pid;%>
<%! String name = null;%>
<%
        String id = request.getParameter("sid");
        int id1 = Integer.parseInt(id);
        session.setAttribute("id", id);
        
        Statement st = null;
        try{
            st= DB.control();
            ResultSet rs = st.executeQuery("select * from patient_req where u_to="+id1+" and request='Waitng !!!'");
            rs.next();
            pid = rs.getInt(1);
            System.out.println(pid);
            
            
            try{
            st= DB.control();
            ResultSet res = st.executeQuery("select * from patient where id="+pid+"");
           
            
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
                        
                       
                        <li class="active"><a href="requests.jsp">Requests</a></li>
                        <li><a href="accepted1.jsp" >Accepted Requests</a></li>
                         <li><a href="index.html">Logout</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us" >
        <%while(res.next()){
            %>
       
        <table width="381" border="0" align="center" cellpadding="2" cellspacing="2">
    
           
            <tr><td width="165"><div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong>Name :</strong></em></font></div></td><td><font size="5" face="Times New Roman, Times, serif"><em><strong><%=res.getString(2)%></strong></em></font></td><td><img src='images/photos/patient/<%=res.getString(13)%>' width="100px" height="100px"/></td></tr>
            
        </table>
            
            <input type="hidden" name="fid" value='<%=res.getInt(1)%>' id="fid"/>
            <input type="hidden" name="tid" value='<%=id1%>' id="tid"/>
             <table width="347" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td height="31"> <div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong> 
          <input type="submit" name="Accept" value="    Accept    " id="acc" onclick="myfun(id)"/>
          </strong></em></font></div></td>
      <td><center>
          <font size="5"> 
          <input type="submit" name="Reject" value="     Reject    " id="acc1" onclick="myfun(id)"/>
          </font></center></td>
    </tr>
  </table>
             <%}%>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  



<%
}
        catch(Exception e){
            System.out.println(e);
        }
%>
<%
}
        catch(Exception e){%>
            <h1 style="color:red;" align="center">No Request has be found !!!</h1>
            
       <% System.out.println(e);}
%>
           
          
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