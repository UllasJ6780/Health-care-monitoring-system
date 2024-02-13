
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
    <title>patient_Profile | Health Record</title>
	
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
 <!-- <script>
        function myfun(){
         
            var d=document.getElementById("myid").value;
            var fid = document.getElementById("fid").value;
            alert("Requested Successfully !!!");
          
                 
           $.ajax({url:"prof_patient?id="+d+"&fid="+fid,success:function(data,ResponseText){
                 
           }});
      
                   // window.location.href="prof_patient.jsp?id="+d+"&fid="+fid;
                      //$("#myload").load("prof_patient.jsp?id="+d+"&fid="+fid);
            
             
              
         
        }
        
        function myfun2(){
            var sid = document.getElementById("fid").value;
            window.location.href="requests.jsp?sid="+sid;
      
        }
        
    </script> -->
    <style>
    table{
    	margin-left: 239px;
    }
    </style>
</head>



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
                        
                         
                       	<li><a href="patient1.jsp">Profile</a></li>  
                       	<li><a href="availtime.jsp">Doctors Available Time</a></li>
                         <li><a href="index.html">Logout</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->
			<section id="about-us" >
         
       
    
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <%
        String sess =(String)session.getAttribute("id");
        int id = Integer.parseInt(sess);
        
        Statement st = null;
        Connection cn = null;
        try{
            st= DB.control();
            ResultSet rs = st.executeQuery("select * from billing where id="+id+"");
            System.out.println(id);
           if(rs.next()){
        	   System.out.println("dsvs");
         
          %>  

<table border="2">
<tr>
<th>Pateint Id</th>
<th>Name</th>
<th>Birth</th>
<th>Address</th>
<th>Contact</th>
<th>Emasil</th>
<th>Gender</th>
<th>Disease</th>
<th>Consulted Doctor</th>
<th>BedCharge</th>
<th>Medicine Charge</th>
<th>Others Charge</th>
<th>TOtal</th>
</tr>
	
         <tr>
           <td><b><%=rs.getString(1) %></b></td>
        
             <td><%=rs.getString(2) %></td>
           
              <td><%=rs.getString(3) %></td>
             
             
               <td><%=rs.getString(4) %></td>
              
                <td><%=rs.getString(5) %></td>
     
               <td> <%=rs.getString(6) %></td>
                 <td><%=rs.getString(7) %></td>
                 <td> <%=rs.getString(8) %></td>
                   <td><%=rs.getString(9) %></td>
                    <td><%=rs.getString(10) %></td>
                     <td><%=rs.getString(11) %></td>
                      <td><%=rs.getString(12) %></td>
                       <td><%=rs.getString(13) %> </td>
                              </tr>
          
    </table>
          <%  
        }
           else
        	   
           {
        	   System.out.println("hello");
        	   %>
        	   <center><h3 style="color:red;">Bill is not yet generated</h3></center>
        	   <%
        	  
           }
        }  
        catch(Exception e){
        	e.printStackTrace();
        }
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