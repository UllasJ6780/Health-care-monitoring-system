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
System.out.println("ss"+pid);
ResultSet res = data.getPatient1();



%>
<center>
	<table border="1" style="margin-top:100px">
    <tr style="font-weight:bold;color:red">
   <td>Name</td>
     <td>Address</td>
       <td>Contact</td>
         <td>Gender</td>
           <td>Decease</td>
           </tr>

<%
while(res.next()){
	String date =res.getString(12).substring(0, 10);

	if(pid.equalsIgnoreCase(date)){
%>
 
    <tr>
   <td><%=res.getString(2) %>
   </td>
   <td><%=res.getString(4) %>
   </td>
   <td><%=res.getString(5) %>
   </td>
   <td><%=res.getString(7) %>
   </td>
   <td><%=res.getString(8) %>
   </td>
   </tr>
 
   
   
  
   
 
      
<%
}
}

 %>
     </center>
    

   
</body>
</html>