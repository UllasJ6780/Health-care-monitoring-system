
<%
String s1 = request.getParameter("s1");
String s2 = request.getParameter("s2");
String s3 = request.getParameter("s3");
int s4 = Integer.parseInt(s1);
int s5 = Integer.parseInt(s2);
int s6 = Integer.parseInt(s3);
int s7 = s4+s5+s6;
out.print(s7);

 %>
