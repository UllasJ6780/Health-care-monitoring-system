<%@page import="model.DB"%>
<!DOCTYPE html>
<%@page import ="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat" %> 
<%@page contentType="text/html" import="java.util.*" %>
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
     <script src="js/respond.min.js"></script>
     <script>
        function myfunction(){
        var email = document.getElementById("mail").value;
       
        var birthday = document.getElementById("dob").value;
        var con = document.getElementById("con").value;
        
         var filter =/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
 		var b= birthday.split("-");
 		var dd = new Date();
 		var diff = dd.getFullYear()-b[0];
 		  if(con.length!=10){
            alert("Invalid Contact !!");
            return false;
            }
      	var s =/[0-9]/;
            if((window.document.form1.name.value=="")||(window.document.form1.dob.value=="")||(window.document.form1.adr.value=="")||(window.document.form1.con.value=="")||(window.document.form1.mail.value=="")||(window.document.form1.dec.value=="")){
                alert("Please Enter All fields");
                return false;
            }
            if(!filter.test(email)){
            	alert("Invalid Email Address !!!");
            	return false;
            
            }
          
            if((window.document.form1.con.value).length!=10){
            alert("Invalid Contact !!!");
            return false;
            }
            if(!(window.document.form1.con.value).match(s)){
             alert("Invalid Contact !!!");
            return false;
            }
          
            else{
            	alert("Patient Inserted Successfully !!!");
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
                         <li><a href="doctor.jsp">Doctor</a></li>
                        <li class="active"><a href="patient.jsp">Patient</a></li>
                         
                        <li><a href="employee.jsp">Employee</a></li>
                        <li><a href="del_employee.jsp">Delete Staff</a></li>
                        <li><a href="index.html">Logout</a></li>
                                                    
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us">
         <%
        Statement st = null;
       
        st = DB.control();
        ResultSet rs = st.executeQuery("select max(id) from patient");
        rs.next();
        
%>
        <form name="form1"  method="post" action="patient" onSubmit="return valid(this)" enctype="Multipart/form-data" >
  <p align="center"><strong><font color="#003399" size="5" face="Times New Roman">Patient Registration </font></strong></p>
  
  <p align="center">&nbsp;</p>
  <table width="381" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td width="165"><div align="center"><font size="4" face="Times New Roman"><em><strong>ID</strong></em></font></div></td>
      <td width="192"><font size="5"> 
        <input name="id" type="text" id="id" value='<%= rs.getInt(1)+1%>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Name</strong></em></font></div></td>
      <td><font size="5"> 
        <input name="name" type="name" id="name"/>
        </font></td>
    </tr>
     <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Date of Birth</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="dob" type="dob" id="dob" placeholder="DD-MM-YYYY"/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Address</strong></em></font></div></td>
       <td><font size="5"> 
        <textarea name="adrs" cols="15" rows="6" id="adrs"/></textarea>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Contact</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="con" type="con" id="con" maxlength="10"/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Email</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="mail" type="mail" id="mail" placeholder="example@gmail.com"/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Gender</strong></em></font></div></td>
       <td><font size="5"> 
           Male : <input type="radio" name="gender" value="male" id="gen"/>
           Female : <input type="radio" name="gender" value="female" id="gen"/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Disease_Symptoms</strong></em></font></div></td>
       <td><font size="5"> 
        <select name="dec" type="dec" id="dec">
        	<option>--Select--</option>
        	<option value="Fever">Fever</option>
        	<option value="DryCough">DryCough</option>
        	<option value="Tiredness">Tiredness</option>
        	<option value="Aches&Pains">Aches&Pains</option>
        	<option value="Diarrhoea">Diarrhoea</option>
        	<option value="LossOfTaste/smell">LossOfTaste/smell</option>
        </select>
        </font></td>
    </tr>
    <%
    	
    	 st= DB.control();
    	 ResultSet res = st.executeQuery("select * from doctor");
     %>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Consulted Doctor</strong></em></font></div></td>
       <td><font size="5"> 
       <select name="cod">
       <%while(res.next()){ %>
       <option value='<%=res.getString(1) %>'><%=res.getString(1) %></option>
       <%} %>
       </select>
        
        </font></td>
    </tr>
      <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Consusted Staff_Id</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="cons" type="prm" id="prm"/>
        </font></td>
    </tr>
    <tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Prescribed Medicine</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="prm" type="prm" id="prm"/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Current Condition</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="cuc" type="cuc" id="cuc"/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Duration</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="dur" type="dur" id="dur"/>
        </font></td>
    </tr>
  
     <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Time</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="dur" type="text" name="time" id="dur" value='<%=new java.util.Date() %>'/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Bed_Type</strong></em></font></div></td>
      <td> <font size="5"> 
        <select name="btype" size="1" id="btype">
          <option value="normal">Normal</option>
          <option value="special">Special</option>
          <option value="icu">ICU</option>
        
        </select>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>Photo</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="img" type="file" id="img"/>
        </font></td>
    </tr>
    <tr> 
      <td><div align="center"><font size="4" face="Times New Roman"><em><strong>X-Ray</strong></em></font></div></td>
       <td><font size="5"> 
        <input name="img1" type="file" id="img"/>
        </font></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="347" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td height="31"> <div align="center"><font size="5" face="Times New Roman, Times, serif"><em><strong> 
          <input type="submit" name="Submit" value="    Submit    " onclick="return myfunction()"/>
          </strong></em></font></div></td>
      <td><center>
          <font size="5"> 
          <input type="reset" name="Submit2" value="     Reset    "/>
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